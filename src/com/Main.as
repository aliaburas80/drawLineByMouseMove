package com {
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import com.utiles.Console;
    import flash.events.MouseEvent;

    public class Main extends Sprite {

        private var console:Console;

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
           stage.addEventListener(MouseEvent.MOUSE_MOVE,mouseMovehandler);
           resizeElement(null);
        }

        private function  mouseMovehandler(e:MouseEvent):void{
        }

        private function resizeElement(e:Event):void {
            console.log(stage.stageWidth as String);
        }
    }
}
