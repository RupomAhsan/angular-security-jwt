import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Params } from '@angular/router';
import { Location } from '@angular/common';
import { Players } from '../_models/players';
import { Club } from '../_models/club';
import { ClubService } from '../_services/club.service';
import { PlayersService } from '../_services/players.service';
import { AppUserAuth } from '../security/app-user-auth';
import { SecurityService } from '../security/security.service';


@Component({
  templateUrl: './player-detail.component.html'
})
export class PlayerDetailComponent implements OnInit {
  player: Players;
  originalPlayer: Players;
  clubs: Club[];
  securityObject: AppUserAuth = null;

  constructor(private clubService: ClubService,
    private playerService: PlayersService,
    private route: ActivatedRoute,
    private location: Location,
    private securityService: SecurityService) {
    this.securityObject = securityService.securityObject;
  }


  ngOnInit() {
    this.getCategories();
    // Get the passed in player id
    let id = +this.route.snapshot.paramMap.get('id');
    // Create or load a player
    this.createOrLoadPlayer(id);
  }

  private createOrLoadPlayer(id: number) {
    if (id == -1) {
      // Create new player object
      this.initPlayer();
    }
    else {
      // Get a player from player service
      this.playerService.getPlayer(id)
        .subscribe(player => {
          this.player = player;
          this.originalPlayer = Object.assign({}, this.player);
        });
    }
  }

  private initPlayer(): void {
    // Add a new player
    this.player = new Players(
      {
        name: 'Cristiano Ronaldo',
        joinedDate: new Date(),
        price: 5000,
        nationality: 'PORTUGAL'
      });
    this.originalPlayer = Object.assign({}, this.player);
  }

  private getCategories(): void {
    this.clubService.getClubs()
      .subscribe(clubs => this.clubs = clubs);
  }

  saveData(): void {
    if (this.player.id) {
      // Update player
      this.playerService.updatePlayer(this.player)
        .subscribe(player => { this.player = player },
          () => null,
          () => this.dataSaved());
    }
    else {
      // Add a player
      this.playerService.addPlayer(this.player)
        .subscribe(player => { this.player = player },
          () => null,
          () => this.dataSaved());
    }
  }

  private dataSaved(): void {
    // Redirect back to list
    this.goBack();
  }

  goBack(): void {
    this.location.back();
  }

  cancel(): void {
    this.goBack();
  }
}
