export class AppUserAuth {
  userName: string = "";
  bearerToken: string = "";
  isAuthenticated: boolean = false;
  canAccessPlayers: boolean = false;
  canAddPlayer: boolean = false;
  canSavePlayer: boolean = false;
  canAccessClubs: boolean = false;
  canAddClub: boolean = false;
}
