package ${YYAndroidPackageName};

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.widget.EditText;
import android.text.ClipboardManager;

import com.yoyogames.runner.RunnerJNILib;

public class Dialogs {
	
	private static final int EVENT_OTHER_DIALOG = 63;
	private static double dialogId = -999;

	private double getDialogId() {
		dialogId -= 1;
		return dialogId;
	}
	
	public double native_alert(final String message) {

		final double dialogId = getDialogId();

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {

				AlertDialog.Builder dialog;

				if (android.os.Build.VERSION.SDK_INT >= 21) {
					dialog = new AlertDialog.Builder(RunnerActivity.CurrentActivity, android.R.style.Theme_Material_Light_Dialog_Alert);
				} else {
					dialog = new AlertDialog.Builder(RunnerActivity.CurrentActivity);
				}

				if (message != null) {
					dialog.setMessage(message.replace("#", "\n"));
				}
				
				dialog.setPositiveButton("OK", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int id) {

						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "id", dialogId);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "status", 1);
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_DIALOG);
						
						dialog.cancel();
					}
				});
				
				dialog.create().show();
			}
		});

		return dialogId;
	}

	public double native_confirm(final String message) {

		final double dialogId = getDialogId();
		
		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {
				
				AlertDialog.Builder dialog = new AlertDialog.Builder(RunnerActivity.CurrentActivity);
				
				if (android.os.Build.VERSION.SDK_INT >= 21) {
					dialog = new AlertDialog.Builder(RunnerActivity.CurrentActivity, android.R.style.Theme_Material_Light_Dialog_Alert);
				} else {
					dialog = new AlertDialog.Builder(RunnerActivity.CurrentActivity);
				}

				if (message != null) {
					dialog.setMessage(message.replace("#", "\n"));
				}
				
				dialog.setPositiveButton("OK", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int id) {

						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "id", dialogId);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "status", 1);
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_DIALOG);

						dialog.cancel();
					}
				});
				
				dialog.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int id) {

						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "id", dialogId);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "status", 0);
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_DIALOG);

						dialog.cancel();
					}
				});
				
				dialog.create().show();
			}
		});

		return dialogId;
	}

	public double native_prompt(final String message, final String text) {

		final double dialogId = getDialogId();

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {
		
				AlertDialog.Builder dialog = new AlertDialog.Builder(RunnerActivity.CurrentActivity);
				
				if (android.os.Build.VERSION.SDK_INT >= 21) {
					dialog = new AlertDialog.Builder(RunnerActivity.CurrentActivity, android.R.style.Theme_Material_Light_Dialog_Alert);
				} else {
					dialog = new AlertDialog.Builder(RunnerActivity.CurrentActivity);
				}

				if (message != null) {
					dialog.setMessage(message.replace("#", "\n"));
				}
				
				final EditText input = new EditText(RunnerActivity.CurrentActivity);
				input.setText(text);
				dialog.setView(input);
				
				dialog.setPositiveButton("OK", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int id) {
						
						String value = input.getText().toString();
						
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "id", dialogId);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "status", 1);
						RunnerJNILib.DsMapAddString(dsMapIndex, "result", value);
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_DIALOG);

						dialog.cancel();
					}
				});
				
				dialog.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int id) {

						String value = input.getText().toString();

						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "id", dialogId);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "status", 0);
						RunnerJNILib.DsMapAddString(dsMapIndex, "result", value);
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_DIALOG);

						dialog.cancel();
					}
				});
				
				dialog.create().show();
			}
		});

		return dialogId;
	}

	public double native_copiable_prompt(final String message, final String text) {

		final double dialogId = getDialogId();

		new Handler(Looper.getMainLooper()).post(new Runnable() {

			@Override
			public void run() {
		
				AlertDialog.Builder dialog = new AlertDialog.Builder(RunnerActivity.CurrentActivity);
				
				if (android.os.Build.VERSION.SDK_INT >= 21) {
					dialog = new AlertDialog.Builder(RunnerActivity.CurrentActivity, android.R.style.Theme_Material_Light_Dialog_Alert);
				} else {
					dialog = new AlertDialog.Builder(RunnerActivity.CurrentActivity);
				}
				
				if (message != null) {
					dialog.setMessage(message.replace("#", "\n"));
				}
				
				final EditText input = new EditText(RunnerActivity.CurrentActivity);
				input.setText(text);
				dialog.setView(input);
				
				dialog.setPositiveButton("Copy", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int id) {
						
						String value = input.getText().toString();
						
						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "id", dialogId);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "status", 1);
						RunnerJNILib.DsMapAddString(dsMapIndex, "result", value);
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_DIALOG);

						ClipboardManager clipboard = (ClipboardManager) RunnerActivity.CurrentActivity.getSystemService(RunnerActivity.CLIPBOARD_SERVICE);
						clipboard.setText(value);

						dialog.cancel();
					}
				});
				
				dialog.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int id) {

						String value = input.getText().toString();

						int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "id", dialogId);
						RunnerJNILib.DsMapAddDouble(dsMapIndex, "status", 0);
						RunnerJNILib.DsMapAddString(dsMapIndex, "result", value);
						RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex, EVENT_OTHER_DIALOG);

						dialog.cancel();
					}
				});
				
				dialog.create().show();
			}
		});

		return dialogId;
	}
}