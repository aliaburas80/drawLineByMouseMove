package com {
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import com.utiles.Console;
    import flash.events.MouseEvent;
    import flash.display.Shape;
    import com.greensock.TweenLite;
    import com.greensock.easing.Quad;
    import com.greensock.easing.BounceIn;
    import com.greensock.easing.Elastic;
    import com.greensock.easing.CircIn;

    public class Main extends Sprite {

        private var console:Console;
        private var rect:Shape;

        public function Main() {
            super();
            if (stage)
                addStageSetting()
            else
                addEventListener(Event.ADDED_TO_STAGE, addStageSetting);
        }

        private function addStageSetting(e:Event = null):void {
            removeEventListener(Event.ADDED_TO_STAGE, addStageSetting);
            stage.align = StageAlign.TOP_LEFT;
            stage.scaleMode = StageScaleMode.NO_SCALE;
            console = new Console('Main');
            stage.addEventListener(Event.RESIZE, resizeElement);
            stage.addEventListener(MouseEvent.MOUSE_MOVE, mouseMovehandler);
            resizeElement(null);
            drawRectInCenter()
        }

        private function mouseMovehandler(e:MouseEvent):void {
        }

        private function resizeElement(e:Event):void {
            if (rect)
                TweenLite.to(rect, 0.5, {alpha: 0.5, x: (stage.stageWidth - rect.width) * 0.5, y: (stage.stageHeight - rect.height) * 0.5, ease: CircIn, onComplete: function():void {
                    TweenLite.to(rect, 0.2, {alpha: 1})
                }})

        }

        private function drawRectInCenter():void {
            rect = new Shape();
            rect.graphics.beginFill(0xFF0000);
            rect.graphics.drawRect(0, 0, 100, 100);
            rect.graphics.endFill();
            this.parent.addChild(rect);

            rect.x = (stage.stageWidth - rect.width) * 0.5;
            rect.y = (stage.stageHeight - rect.height) * 0.5;
        }
    }
}
