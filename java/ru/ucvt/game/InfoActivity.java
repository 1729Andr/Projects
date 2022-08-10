package ru.ucvt.game;

import android.app.Activity;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class InfoActivity extends Activity {

    TextView textView8,textView9;
    Button btnBack;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_info);
        textView8=(TextView) findViewById(R.id.textView8);
        textView9=(TextView) findViewById(R.id.textView9);
        textView8.setMovementMethod(new ScrollingMovementMethod());
        textView9.setMovementMethod(new ScrollingMovementMethod());
        btnBack=(Button) findViewById(R.id.btnBack);


        btnBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });



    }
}
