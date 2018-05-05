package ${packageName};

import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

class ${className}Fragment : Fragment(), ${className}Contract.View {

    private lateinit var presenter: ${className}Contract.Presenter
    private lateinit var v: View

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        presenter = ${className}Presenter(context!!)
        presenter.attachView(this)
    }


    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        v = inflater.inflate(R.layout.fragment_${resName}, container, false)
        return v
    }

    override fun showToastMessage(message: String) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    companion object {

        val TAG = "${className}"

        fun newInstance(): ${className}Fragment {
            val fragment = ${className}Fragment()
            val args = Bundle()
            fragment.arguments = args
            return fragment
        }
    }
}
