import { Component, OnInit } from '@angular/core';
import { ClubService } from '../_services/club.service';
import { Club } from '../_models/club';
import { AppUserAuth } from '../security/app-user-auth';
import { SecurityService } from '../security/security.service';

@Component({
  selector: 'app-club',
  templateUrl: './club.component.html',
  styleUrls: ['./club.component.scss']
})
export class ClubComponent implements OnInit {
  clubs: Club[];
  securityObject: AppUserAuth = null;

  constructor(private clubService: ClubService,
    private securityService: SecurityService) {
    this.securityObject = securityService.securityObject;
  }

  ngOnInit() {
    this.getCategories();
  }

  private getCategories(): void {
    this.clubService.getClubs()
      .subscribe(clubs => this.clubs = clubs);
  }
}
