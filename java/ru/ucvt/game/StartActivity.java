package ru.ucvt.game;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class StartActivity extends Activity {

    Button btnStart,btnExit,btnLocation,btnInfo;
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_start);
        btnStart=(Button) findViewById(R.id.btnStart);
        btnExit=(Button) findViewById(R.id.btnExit);
        btnLocation=(Button) findViewById(R.id.btnLocation);
        btnInfo=(Button) findViewById(R.id.btnInfo);


        btnStart.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent mintent=new Intent(StartActivity.this,MainActivity.class);
                startActivity(mintent);

            }
        });


        btnExit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finishAffinity();


            }
        });

        btnLocation.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent mintent=new Intent(StartActivity.this,LocationActivity.class);
                startActivity(mintent);

            }
        });

        btnInfo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent mintent=new Intent(StartActivity.this,InfoActivity.class);
                startActivity(mintent);

            }
        });






    }


}
