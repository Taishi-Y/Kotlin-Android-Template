<?xml version="1.0"?>
<recipe>
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="root/src/app_package/Activity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Activity.kt" />
    <instantiate from="root/src/app_package/Contract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Contract.kt" />
    <instantiate from="root/src/app_package/Fragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Fragment.kt" />
    <instantiate from="root/src/app_package/Presenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt" />

    <instantiate from="root/res/layout/activity.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/activity_${resName}.xml" />
    <instantiate from="root/res/layout/fragment.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/fragment_${resName}.xml" />
</recipe>
