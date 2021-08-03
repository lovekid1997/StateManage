package com.example.state_manage;

import android.os.Bundle;
import android.os.Handler;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.example.state_manage.model.FlutterProxy;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.JSONMessageCodec;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.GeneratedPluginRegistrant;


public class MainActivity extends FlutterActivity {
    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        testMethod1();
        testBasicMessage();
        testEventChannel();
    }

    private void testEventChannel() {
        new EventChannel(getFlutterEngine().getDartExecutor().getBinaryMessenger()
                , new FlutterProxy().EVENT_CHANNEL)
                .setStreamHandler(new EventChannel.StreamHandler() {
                    @Override
                    public void onListen(Object arguments, EventChannel.EventSink events) {
                        startListening(arguments, events);
                    }

                    @Override
                    public void onCancel(Object arguments) {
                        cancelListening(arguments);
                    }
                });
    }

    private Map<Object, Runnable> listeners = new HashMap<>();

    void startListening(Object listener, EventChannel.EventSink emitter) {
        // Prepare a timer like self calling task
        final Handler handler = new Handler(getMainLooper());
        listeners.put(listener, new Runnable() {
            @Override
            public void run() {
                if (listeners.containsKey(listener)) {
                    // Send some value to callback
                    emitter.success("Hello listener! " + (System.currentTimeMillis() / 1000));
                    handler.postDelayed(this, 1000);
                }
            }
        });
        // Run task
        handler.postDelayed(listeners.get(listener), 1000);
    }

    void cancelListening(Object listener) {
        // Remove callback
        listeners.remove(listener);
    }

    private void testBasicMessage() {
        BasicMessageChannel messageChannel =
                new BasicMessageChannel(
                        getFlutterEngine().getDartExecutor().getBinaryMessenger(),
                        new FlutterProxy().BASIC_CHANNEL_MESSAGE,
                        JSONMessageCodec.INSTANCE
                );
        messageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() {
            @Override
            public void onMessage(@Nullable Object message,
                                  @NonNull BasicMessageChannel.Reply reply) {

                JSONObject jsonObject = new JSONObject();
                try {
                    jsonObject.put("phone", "0902646558");
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                reply.reply(jsonObject);
            }
        });
    }

    private void testMethod1() {
        new MethodChannel(getFlutterEngine().getDartExecutor().getBinaryMessenger(),
                new FlutterProxy().METHOD_CHANNEL_NAME)
                .setMethodCallHandler(
                        (call, result) -> {
                            if (call.method.equals("getDevice")) {
                                String type = call.argument("type");
                                result.success("method channel");
                                return;
                            }
                        }
                );
    }

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Pigeon.Api.setup(getFlutterEngine().getDartExecutor().getBinaryMessenger(),
                new getMyChannel());
    }

    private class getMyChannel implements Pigeon.Api {
        @Override
        public Pigeon.GetChannel getChannel() {
            Pigeon.GetChannel getChannel = new Pigeon.GetChannel();
            getChannel.setResult("Test pigeon");
            return getChannel;
        }
    }
}
