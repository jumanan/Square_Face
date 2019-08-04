class AlienFace{
	field int _counter;
	field int _cycle;
	field Point _pos;
	field int _direction;
	
	constructor AlienFace new(int x,int y){
		let _counter = -1;
		let _cycle = 1;
		let _pos = Point.new(x,y);
		let _direction = 1;
		return this;
	}

	method Point getPos(){
		return _pos;
	}
	
	
	method boolean isTurn(){
		if (_counter = _cycle){
			let _counter = 1;
			return true;
		}
		let _counter = _counter + 1;
		return false;
	}
	
	method void moveTo(Point pos){
		do _pos.setX(pos.getX());
		do _pos.setY(pos.getY());
		return;
	}
	
	method void drawAlien(){
		var int x,y;
		let x = _pos.getX();
		let y = _pos.getY();
		
		do Screen.setColor(true);
		do Screen.drawCircle(7 + 12 + (y *25), 14 + 12 +(x * 25), 11);
		do Screen.setColor(false);
		do Screen.drawCircle(7 + 7 + (y*25) ,14 + 7 + (x*25),3);
		do Screen.drawCircle(7 + 17 + (y * 25),14 + 7 + (x * 25),3);
		
		return;
	}
	
}