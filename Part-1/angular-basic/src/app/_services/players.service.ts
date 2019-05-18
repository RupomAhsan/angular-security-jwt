import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Players } from '../_models/players';

const API_URL = 'http://localhost:5000/api/player/';
const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type': 'application/json'
  })
};

@Injectable()
export class PlayersService {

  constructor(private http: HttpClient) { }

  getPlayers(): Observable<Players[]> {
    return this.http.get<Players[]>(API_URL);
  }

  getPlayer(id: number): Observable<Players> {
    return this.http.get<Players>(API_URL + id.toString());
  }

  addPlayer(entity: Players): Observable<Players> {
    return this.http.post<Players>(API_URL, entity, httpOptions);
  }

  updatePlayer(entity: Players): Observable<any> {
    return this.http.put(API_URL, entity, httpOptions);
  }

  deletePlayer(id: number): Observable<Players> {
    return this.http.delete<Players>(API_URL + id.toString(), httpOptions);
  }
}
