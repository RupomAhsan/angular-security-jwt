import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { Club } from '../_models/club';

const API_URL = 'http://localhost:5000/api/club/';

@Injectable()
export class ClubService {

  constructor(private http: HttpClient) { }

  getClubs(): Observable<Club[]> {
    return this.http.get<Club[]>(API_URL);
  }
}
