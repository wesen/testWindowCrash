import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2

Window {
    id: window
    property alias content: contentLayout.data

    Component.onDestruction: {
        console.log("destroying window " + window)
    }

    Component.onCompleted: {
        for (var i = 0; i < content.length; i++) {
            console.log("child " + i + " content " + content[i])
            qmlHelpers.SetParent(content[i], contentLayout)
        }
    }

    ColumnLayout {
        spacing: 0
        Layout.fillWidth: true
        id: contentLayout
        Component.onDestruction: {
            console.log("destroying layout " + contentLayout)
        }
    }
}
