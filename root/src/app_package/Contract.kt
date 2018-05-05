package ${packageName};

import com.aurumplanet.Liner.base.BasePresenter
import com.aurumplanet.Liner.model.folder_detail.FolderDetailResponse
import com.aurumplanet.Liner.model.folder_detail.HighlightItem
import com.aurumplanet.Liner.model.log_in_status.LogInStatusResponse

interface ${className}Contract {

    interface View {
        fun showToastMessage(message: String)
    }

    interface Presenter : BasePresenter<View> {
    
    }
}
