import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { DashboardComponent } from './dashboard/dashboard.component';
import { PlayerComponent } from './player/player.component';
import { ClubComponent } from './club/club.component';
import { PlayerDetailComponent } from './player/player-detail.component';
import { LoginComponent } from './security/login.component';
import { AuthGuard } from './security/auth.guard';

const routes: Routes = [
  {
    path: 'dashboard',
    component: DashboardComponent
  },
  {
    path: 'players',
    component: PlayerComponent,
    canActivate: [AuthGuard],
    data: { securityPropertyName: 'canAccessPlayers' }
  },
  {
    path: 'playerDetail/:id',
    component: PlayerDetailComponent,
    canActivate: [AuthGuard],
    data: { securityPropertyName: 'canAccessPlayers' }
  },
  {
    path: 'clubs',
    component: ClubComponent,
    canActivate: [AuthGuard],
    data: { securityPropertyName: 'canAccessClubs' }
  },
  {
    path: 'login',
    component: LoginComponent
  },
  {
    path: '', redirectTo: 'dashboard', pathMatch: 'full'
  },
  {
    path: '**', component: DashboardComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
