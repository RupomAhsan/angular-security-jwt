import { AppUserAuth } from "./app-user-auth";
export const LOGIN_MOCKS: AppUserAuth[] = [
  {
    userName: "Rupom",
    bearerToken: "abcd1234efg5678",
    isAuthenticated: true,
    canAccessPlayers: true,
    canAddPlayer: true,
    canSavePlayer: true,
    canAccessClubs: true,
    canAddClub: false
  },
  {
    userName: "Ahsan",
    bearerToken: "abcd1234efg9101",
    isAuthenticated: true,
    canAccessPlayers: false,
    canAddPlayer: false,
    canSavePlayer: false,
    canAccessClubs: true,
    canAddClub: true
  }
];
