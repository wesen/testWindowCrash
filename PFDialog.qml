import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2

Window {
    id: window
    property alias content: contentLayout.data

    Component.onDestruction: {
        console.log("destroying window " + window)
    }

    Item {
        id: contentLayout
        Component.onDestruction: {
            console.log("destroying layout " + contentLayout)
        }
    }
}
