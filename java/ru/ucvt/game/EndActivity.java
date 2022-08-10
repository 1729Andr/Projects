package ru.ucvt.game;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class EndActivity extends Activity {

    Button btnMen,btnAgain;
    TextView txtSchet,txtRecord;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_end);
        btnMen=(Button) findViewById(R.id.btnMen);
        btnAgain=(Button) findViewById(R.id.btnAgain);
        txtSchet=(TextView) findViewById(R.id.txtSchet);
        txtRecord=(TextView) findViewById(R.id.txtRecord);



        txtSchet.setText("Счёт: " + MainActivity.schetE);
        txtRecord.setText("Рекорд: " + RecordActivity.record);


        btnMen.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent mintent=new Intent(EndActivity.this,StartActivity.class);
                startActivity(mintent);


            }
        });


        btnAgain.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent mintent=new Intent(EndActivity.this,MainActivity.class);
                startActivity(mintent);

            }
        });







    }





}
