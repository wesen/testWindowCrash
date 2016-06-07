import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    property var window: PFDialog {
        id: dialog
        content:
            Text {
            text: "Foobar"
        }
    }
}
