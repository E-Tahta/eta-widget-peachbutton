#ifndef PEACHBUTTON_H
#define PEACHBUTTON_H

#include <QGraphicsSceneHoverEvent>
#include <QList>

#include <Plasma/Applet>


namespace Plasma
{
    class DeclarativeWidget;

}

class Peachbutton : public Plasma::Applet
{
    Q_OBJECT

    public:
        Peachbutton(QObject *parent, const QVariantList &args);
        ~Peachbutton();
        void init();
        Q_INVOKABLE void fakekey();

    private:
        void initDeclarativeUI();
        Plasma::DeclarativeWidget *m_declarativeWidget;
        enum DisplayedText {
            Number,
            Name,
            None
        };

        DisplayedText m_displayedText;

};

K_EXPORT_PLASMA_APPLET(peachbutton, Peachbutton)

#endif
