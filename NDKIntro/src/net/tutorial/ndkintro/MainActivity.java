package net.tutorial.ndkintro;

import ndk.NDK_Methods;
import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends Activity 
{
	NDK_Methods ndk_lib;	
	
	static 
	{
		System.loadLibrary("native_lib");
	}
	
	@Override
	protected void onCreate(Bundle savedInstanceState) 
	{
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		SetviewComponents();
	}

	private void SetviewComponents() 
	{
		String ndkMessage = NDK_Methods.SayHelo();
		
		if(ndkMessage != null)
		{
			TextView messageTextView = (TextView)findViewById(R.id.tvNDKmessage);
			messageTextView.setText(ndkMessage);
		}
	}
}
