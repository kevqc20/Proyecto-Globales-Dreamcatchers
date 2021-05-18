package com.dreamcatchers.frontend

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Toast
import android.widget.Button
import android.widget.EditText
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        var et_user_name = findViewById(R.id.et_user_name) as EditText
        var et_password = findViewById(R.id.et_password) as EditText
        var btn_reset = findViewById(R.id.btn_reset) as Button
        var btn_submit = findViewById(R.id.btn_submit) as Button
        var btn_register = findViewById(R.id.textView2) as TextView


        btn_reset.setOnClickListener {
            // clearing user_name and password edit text views on reset button click
            et_user_name.setText("")
            et_password.setText("")
        }

        // set on-click listener
        btn_submit.setOnClickListener {

            val intent = Intent(this, MainPage::class.java)
            // start your next activity
            startActivity(intent)

            // your code to validate the user_name and password combination
            // and verify the same


        }

        // set on-click listener
        btn_register.setOnClickListener {

            val intent = Intent(this, Register::class.java)
            // start your next activity
            startActivity(intent)

            // your code to validate the user_name and password combination
            // and verify the same


        }


    }
}