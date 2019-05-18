import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { ClubComponent } from './club/club.component';
import { PlayerComponent } from './player/player.component';
import { PlayerDetailComponent } from './player/player-detail.component';
import { ClubService } from './_services/club.service';
import { PlayersService } from './_services/players.service';
import { HttpClientModule } from '@angular/common/http';
import { AngularFontAwesomeModule } from 'angular-font-awesome';
import { LoginComponent } from './security/login.component';

@NgModule({
  declarations: [
    AppComponent,
    DashboardComponent,
    ClubComponent,
    PlayerComponent,
    PlayerDetailComponent,
    LoginComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpClientModule,
    AppRoutingModule,
    AngularFontAwesomeModule
  ],
  providers: [PlayersService, ClubService],
  bootstrap: [AppComponent]
})
export class AppModule { }
