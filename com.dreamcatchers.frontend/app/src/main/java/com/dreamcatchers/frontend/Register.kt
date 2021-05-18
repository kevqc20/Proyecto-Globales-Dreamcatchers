package com.dreamcatchers.frontend

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class Register : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_register)

        var btn_submit = findViewById(R.id.btn_submit) as Button

        btn_submit.setOnClickListener {

            val intent = Intent(this, MainActivity::class.java)
            // start your next activity
            startActivity(intent)

            // your code to validate the user_name and password combination
            // and verify the same


        }
    }
}