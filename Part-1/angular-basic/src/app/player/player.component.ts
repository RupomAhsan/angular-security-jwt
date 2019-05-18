import { Component, OnInit } from '@angular/core';
import { PlayersService } from '../_services/players.service';
import { Router } from '@angular/router';
import { Players } from '../_models/players';
import { SecurityService } from '../security/security.service';
import { AppUserAuth } from '../security/app-user-auth';
@Component({
  selector: 'app-player',
  templateUrl: './player.component.html',
  styleUrls: ['./player.component.scss']
})
export class PlayerComponent implements OnInit {
  players: Players[];
  securityObject: AppUserAuth = null;

  constructor(private playerService: PlayersService,
    private router: Router,
    private securityService: SecurityService) {
    this.securityObject = securityService.securityObject;
  }

  ngOnInit() {
    this.getPlayers();
  }

  private getPlayers(): void {
    this.playerService.getPlayers()
      .subscribe(players => this.players = players);
  }

  addPlayer(): void {
    this.router.navigate(['/playerDetail', -1]);
  }

  deletePlayer(id: number): void {
    if (confirm("Delete this player?")) {
      this.playerService.deletePlayer(id)
        .subscribe(() => this.players = this.players.filter(p => p.id != id));
    }
  }
}
