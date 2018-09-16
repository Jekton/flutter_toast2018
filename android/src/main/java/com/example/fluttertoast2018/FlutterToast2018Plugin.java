package com.example.fluttertoast2018;

import android.content.Context;
import android.widget.Toast;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** FlutterToast2018Plugin */
public class FlutterToast2018Plugin implements MethodCallHandler {

  private final Context mContext;

  public FlutterToast2018Plugin(Context context) {
    mContext = context;
  }
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "example.com/flutter_toast2018");
    channel.setMethodCallHandler(new FlutterToast2018Plugin(registrar.context()));
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("toast")) {
      String content = call.argument("content");
      String duration = call.argument("duration");
      Toast.makeText(mContext, content,
                     "short".equals(duration) ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG)
              .show();
      result.success(true);
    } else {
      result.notImplemented();
    }
  }
}
