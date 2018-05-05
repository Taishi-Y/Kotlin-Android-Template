package ${packageName};

interface ${className}Contract {

    interface View {
        fun showToastMessage(message: String)
    }

    interface Presenter : BasePresenter<View> {

    }
}
