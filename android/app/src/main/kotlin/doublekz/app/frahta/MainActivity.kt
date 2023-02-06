package doublekz.app.frahto
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
    fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("51c5fe5b-8b4a-4f3a-8525-cf5b97e5593e") // Your generated API key
        super.configureFlutterEngine(flutterEngine)
    }
}