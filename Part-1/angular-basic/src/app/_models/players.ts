export class Players {
  public constructor(init?: Partial<Players>) {
    Object.assign(this, init);
  }
  id: number;
  name: string;
  joinedDate: Date;
  price: number;
  nationality: string;
  clubId: number;
}
