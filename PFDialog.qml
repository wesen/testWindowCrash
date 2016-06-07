import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2

Window {
    property alias content: contentLayout.data
    ColumnLayout {
        id: contentLayout
    }
}
