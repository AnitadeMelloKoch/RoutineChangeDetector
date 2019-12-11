import { IonicModule } from '@ionic/angular';
import { RouterModule, Routes } from '@angular/router';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Tab1Page } from './tab1.page';

const routes: Routes = [
  {
    path: '',
    children: [
      { 
        path: '', 
        component: Tab1Page 
      },
      {
        path: 'editActivity/:item',
        loadChildren: '../edit-activity/edit-activity.module#EditActivityPageModule'
      }
    ]
  }
]

@NgModule({
  imports: [
    IonicModule,
    CommonModule,
    FormsModule,
    RouterModule.forChild(routes)
  ],
  declarations: [Tab1Page]
})
export class Tab1PageModule {}
