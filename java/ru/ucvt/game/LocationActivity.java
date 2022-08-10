package ru.ucvt.game;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;

public class LocationActivity extends Activity {

    ImageView pic1,pic2,pic3,pic4;
    public static int location=1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_location);
        pic1=(ImageView)findViewById(R.id.pic1);
        pic2=(ImageView)findViewById(R.id.pic2);
        pic3=(ImageView)findViewById(R.id.pic3);
        pic4=(ImageView)findViewById(R.id.pic4);


        pic1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                location=1;
                finish();
            }
        });

        pic2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                location=2;
                finish();

            }
        });


        pic3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                location=3;
                finish();

            }
        });

        pic4.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                location=4;
                finish();

            }
        });








    }
}
