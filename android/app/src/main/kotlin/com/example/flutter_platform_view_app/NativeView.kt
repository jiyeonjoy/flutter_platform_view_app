package com.example.flutter_platform_view_app

import android.content.Context
import android.graphics.Color
import android.view.View
import android.widget.TextView
import io.flutter.plugin.platform.PlatformView

internal class NativeView(context: Context?, id: Int, creationParams: Map<String?, Any?>?) :
        PlatformView {
    private val textView: TextView = TextView(context)

    override fun getView(): View {
        return textView
    }

    override fun dispose() {}

    init {
        val message: String = creationParams?.get("key").toString()

        textView.textSize = 30f
        textView.setBackgroundColor(Color.rgb(255, 255, 255))
        textView.text = "Rendered on a native Android view (message: $message)"
    }
}
