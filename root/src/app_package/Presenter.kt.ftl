package ${packageName};

import android.content.Context

class ${className}Presenter(val context: Context) : ${className}Contract.Presenter {

    private lateinit var view: ${className}Contract.View

    fun attachView(view: ${className}Contract.View) {
        this.view = view
    }
}
