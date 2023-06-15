import { ComponentFixture, TestBed } from '@angular/core/testing';

import { StoreLocationsComponent } from './store-locations.component';



describe('StoreLocationsComponent', () => {
  let component: StoreLocationsComponent;
  let fixture: ComponentFixture<StoreLocationsComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [StoreLocationsComponent]
    });
    fixture = TestBed.createComponent(StoreLocationsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});