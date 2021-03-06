package ${packageName};

import android.content.Context
import android.content.Intent
import android.support.v7.app.AppCompatActivity
import android.os.Bundle

class ${className}Activity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_${resName})

        if (savedInstanceState == null) {
            supportFragmentManager
                    .beginTransaction()
                    .add(R.id.container, ${className}Fragment.newInstance(), ${className}Fragment.TAG).commit()
        }
    }

    companion object {

        fun createIntent(context: Context): Intent {
            return Intent(context, ${className}Activity::class.java).apply {
                putExtra(ARG_FROM_TUTORIAL, fromTutorial)
            }
        }
    }
}
