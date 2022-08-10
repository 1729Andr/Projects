package ru.ucvt.game;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

public class MainActivity extends Activity {

    DrawView mDW;
    Random rnd = new Random();
    Bitmap mbitmap, fon, doodle_r,doodle_l,platform,enemy  ;
    private Timer mTimer;
    private MyTimerTask mMyTimerTask;
    float x=1,y=1;
    double tikak=0;
    boolean tik;
    public static int schetE;
    public static final String KEY_N = "n";
    private SharedPreferences mSPref;




    public MainActivity() {
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mDW = new DrawView(this);
        setContentView(mDW);
        mSPref = getPreferences(Context.MODE_PRIVATE);
        mLoad();

    }

    class DrawView extends View {
        private Paint mPaint;
        Canvas mcanvas;
        float dx = 1, dy = 1;
        double mx=300,my=900,vx=0,vy=-16,vy2,schet=0;
        float doodle_x=-10;
        boolean right,deth=false;
        int probel,aaa=0,enemyX,enemyY,a;
        int[][] mas  = new int[10][2];
        int [] Mprob=new int[10];
        int [] fly=new int[3];
        boolean [] rightGo= new boolean[3];




        public DrawView(Context context) {
            super(context);
            mPaint = new Paint();
            mbitmap = Bitmap.createBitmap(700, 1000, Bitmap.Config.ARGB_8888);
            mbitmap.setDensity(DisplayMetrics.DENSITY_MEDIUM);
            mcanvas = new Canvas(mbitmap);

            if (LocationActivity.location==1){
                fon = BitmapFactory.decodeResource(getResources(), R.drawable.fon2);
                doodle_l = BitmapFactory.decodeResource(getResources(), R.drawable.doodle);
                doodle_r = BitmapFactory.decodeResource(getResources(), R.drawable.doodle_right);
                platform = BitmapFactory.decodeResource(getResources(), R.drawable.platform2);
                enemy = BitmapFactory.decodeResource(getResources(), R.drawable.e1);
            }else {
                if (LocationActivity.location==2){
                    fon = BitmapFactory.decodeResource(getResources(), R.drawable.fon4);
                    doodle_l = BitmapFactory.decodeResource(getResources(), R.drawable.robot2);
                    doodle_r = BitmapFactory.decodeResource(getResources(), R.drawable.robot1);
                    platform = BitmapFactory.decodeResource(getResources(), R.drawable.platform3);
                    enemy = BitmapFactory.decodeResource(getResources(), R.drawable.e0);
                }else {
                    if (LocationActivity.location==3){
                        fon = BitmapFactory.decodeResource(getResources(), R.drawable.fon5);
                        doodle_l = BitmapFactory.decodeResource(getResources(), R.drawable.robs2);
                        doodle_r = BitmapFactory.decodeResource(getResources(), R.drawable.robs1);
                        platform = BitmapFactory.decodeResource(getResources(), R.drawable.platform5);
                        enemy = BitmapFactory.decodeResource(getResources(), R.drawable.e3);
                    }else {
                        fon = BitmapFactory.decodeResource(getResources(), R.drawable.fon3);
                        doodle_l = BitmapFactory.decodeResource(getResources(), R.drawable.pil2);
                        doodle_r = BitmapFactory.decodeResource(getResources(), R.drawable.pil1);
                        platform = BitmapFactory.decodeResource(getResources(), R.drawable.platform4);
                        enemy = BitmapFactory.decodeResource(getResources(), R.drawable.e4);
                    }
                }
            }





            fly[0]=rnd.nextInt(9);
            while (fly[0]==fly[1] || fly[0]==fly[2] || fly[1]==fly[2]){
                fly[1]=rnd.nextInt(9);
                fly[2]=rnd.nextInt(9);
            }



            int prob=rnd.nextInt(150)+850;
            for (int k=0 ; k<2 ; k++){
                for (int i=0 ; i<10 ; i++){
                    if (k==0){
                        mas[i][k]=rnd.nextInt(650);
                    }else {
                        prob-=(rnd.nextInt(40)+80);

                        mas[i][k]=prob ;
                        Mprob[i]=prob ;
                    }

                }
            }

            enemyX=rnd.nextInt(600);
            enemyY=-(rnd.nextInt(2000)+3000);






        }

        protected void onDraw(Canvas canvas) {
            float canvasy = canvas.getHeight();
            float canvasx = canvas.getWidth();
            dx = canvasx / 700f;
            dy = canvasy / 1000f;
            canvas.scale(dx, dy);

            mcanvas.drawBitmap(fon, 0, 0, mPaint);


            for (int i=0 ; i<10 ; i++){
                mcanvas.drawBitmap(platform,(float)mas[i][0], (float)mas[i][1], mPaint);
            }

            mcanvas.drawBitmap(enemy,(float)enemyX, (float)enemyY, mPaint);



            if (right==true){
                mcanvas.drawBitmap(doodle_r,(float)mx, (float)my, mPaint);
            }else {
                mcanvas.drawBitmap(doodle_l,(float)mx, (float)my, mPaint);
            }

            mPaint.setColor(Color.GRAY);
            mcanvas.drawRect(0,0,700,50,mPaint);




//=============================== Игра ==============================================
            if(my<=400 && vy<=0){
                my=400;
            }else {
                my+=vy;
            }
            vy+=0.4;
            vy2+=0.4;


            if (my<=400 && vy<=0 || my>=890){
                enemyY-=vy2;
            }




            if(tikak>=1){
                tik=false;
            }else {
                if(tikak<=0){
                    tik=true;
                }
            }
            if(tik==true){
                tikak+=0.1;
                enemyY-=1;
            }else {
                tikak-=0.1;
                enemyY+=1;
            }





            for (int i=0 ; i<10 ; i++){
                 if (my<=400 && vy<=0 || my>=890){
                    mas[i][1]-=vy2;
                 }


                 if(deth==false){
                     if ((my<=mas[i][1]-70 && my>=mas[i][1]-98 && mx>=mas[i][0]-65 && mx<=mas[i][0]+65 && vy>2) ){
                         vy=-15;
                         vy2=-16;
                     }
                 }

                 if ((mx>=enemyX-65 && mx<=enemyX+65 && my<=enemyY+30 && my>=enemyY-70 && vy>=0)){
                     vy=-15;
                     vy2=-16;
                     enemyY=1500;
                 }

                if ((mx>=enemyX-70 && mx<=enemyX+70 && my<=enemyY+85 && my>=enemyY-90 && vy<-1 && vy>-14)){
                    vy2=18;
                    vy=18;
                    deth=true;
                }






//===============================конец===================================
                 if (my>=890 && mas[i][1]>0){
                     my=890;
                     vy2=24;
                 }else {
                     if (my>=1000 && mas[i][1]<=0){

                         if (mTimer != null) {
                             mTimer.cancel();
                             mTimer = null;
                         }


                         MainActivity.schetE=(int)Math.round(schet);
                         mSave();
                         Intent mintent=new Intent(MainActivity.this,EndActivity.class);
                         startActivity(mintent);

                     }
                 }
//=====================================================================


                if (enemyY>=1000){
                     enemyX=rnd.nextInt(600);
                    if (schet>2000){
                        enemyY=-(rnd.nextInt(1000)+1500);
                    }else {
                        if(schet>1000){
                            enemyY=-(rnd.nextInt(1000)+2000);
                        }else {
                            enemyY=-(rnd.nextInt(1000)+2300);
                        }
                    }
                    if (LocationActivity.location==1){
                        a = rnd.nextInt(2)+1;
                    }else {
                        if (LocationActivity.location==2){
                            a = rnd.nextInt(2);
                        }else {
                            if (LocationActivity.location==3){
                                a = rnd.nextInt(2)+2;
                            }else {
                                a = rnd.nextInt(2)+4;
                            }
                        }
                    }

                    String mName = "e" + String.valueOf(a);
                    int resID =getResources().getIdentifier(mName, "drawable", getPackageName());
                    enemy = BitmapFactory.decodeResource(getResources(),resID);
                }






                 if (mas[i][1]>=1000){//=======платформы=========

                     if(aaa<=30){
                         aaa++;
                     }else {
                         aaa=0;
                     }

                     mas[i][0]=rnd.nextInt(650);
                     if (schet>2000){//1500//500//100

                         probel=90;

                     }else {
                         if (schet>1000){

                             probel=70;

                         }else {
                             if (schet>500){

                                 probel=50;

                             }else {
                                 if (schet>100){

                                     probel=30;

                                 }else {

                                     probel=0;

                                 }
                             }
                         }
                     }

                     if(i!=0){
                         mas[i][1]=mas[i-1][1]-(Mprob[i-1]-Mprob[i])-probel;
                     }else {
                         mas[0][1]=mas[9][1]-(Mprob[9]-(Mprob[0]-1000))-probel;
                     }

                 }



            }




//============================Движ. платформ==============================
            if(schet>=248 && schet<=250){aaa=0;}
            if(schet>=250){
                if(aaa<=30 && aaa>=10){
                    for (int i=0 ; i<=2 ; i++){
                        if(mas[fly[i]][0]>=640){
                            rightGo[i]=false;
                        }else {
                            if(mas[fly[i]][0]<=-40){
                                rightGo[i]=true;
                            }
                        }
                        if(rightGo[i]==true){
                            mas[fly[i]][0]+=3;
                        }else {
                            mas[fly[i]][0]-=3;
                        }

                    }
                }
                if (aaa==5){
                    fly[0]=rnd.nextInt(9);
                    while (fly[0]==fly[1] || fly[0]==fly[2] || fly[1]==fly[2]){
                        fly[1]=rnd.nextInt(9);
                        fly[2]=rnd.nextInt(9);
                    }
                }
            }
//=================================================================================









   //===========================счет==============================
            if(my<=400 && vy2<=0){
                schet+=0.3;
            }

            mPaint.setColor(Color.BLACK);
            mPaint.setTextSize(26);
            mPaint.setFakeBoldText(true);
            mcanvas.drawText("Счёт: "+ Math.round(schet),45,35,mPaint);

            if (Math.round(schet)>RecordActivity.record){
                RecordActivity.record=(int)Math.round(schet);
            }
            mcanvas.drawText("Рекорд: "+ RecordActivity.record,265,35,mPaint);






 //========================движение вправо влево==========================================
            if (doodle_x==-100){
                vx=0;

            }else {
                if (Math.abs(vx)<=50){

                        if (doodle_x<=350){
                            vx-=0.4;
                            right=false;
                        }
                        if (doodle_x>350){
                            vx+=0.4;
                            right=true;
                        }
                }

            }
            mx+=vx;





            if (mx<=-10 && mx>=-80){
                mx=649;
            }
            if (mx>=650 && mx<=720){
                mx=-5;
            }

















            canvas.drawBitmap(mbitmap, 0, 0, mPaint);
        }

        public boolean onTouchEvent(MotionEvent event) {
            switch (event.getAction()) {
                case MotionEvent.ACTION_DOWN: // нажатие

                    x = event.getX()/dx;
                    y = event.getY()/dy;
                    //код;
                    if (mTimer != null) {
                        mTimer.cancel();
                    }
                    mTimer = new Timer();
                    mMyTimerTask = new MyTimerTask();
                    mTimer.schedule(mMyTimerTask, 0, 10);


                    doodle_x=x;

                    break;
                case MotionEvent.ACTION_UP: // отпускание
                    doodle_x=-100;
                break;
            }


            return true;
        }
    }

    class MyTimerTask extends TimerTask {
        @Override
        public void run() {
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    //код;
                    mDW.invalidate();
                }
            });
        }
    }

    void mSave() {
        SharedPreferences.Editor myeditor = mSPref.edit();
        myeditor.putInt(KEY_N, RecordActivity.record);
        myeditor.apply();
    }

    protected void mLoad() {
        if (mSPref.contains(KEY_N)) {
            RecordActivity.record = mSPref.getInt(KEY_N, 0);
        }}




}
