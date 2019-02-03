int s; 
int[][] up    = {{1, 1, 1}, {1, 1, 1}, {1, 1, 1}}; 
int[][] down  = {{2, 2, 2}, {2, 2, 2}, {2, 2, 2}}; 
int[][] right = {{3, 3, 3}, {3, 3, 3}, {3, 3, 3}}; 
int[][] left  = {{4, 4, 4}, {4, 4, 4}, {4, 4, 4}}; 
int[][] front = {{5, 5, 5}, {5, 5, 5}, {5, 5, 5}}; 
int[][] back  = {{6, 6, 6}, {6, 6, 6}, {6, 6, 6}}; 
void setup() {
	size(2000, 1500, P3D); 
	s = width/15;
} 
color setColor(int face) {
	color c = 0; 
	switch(face) {
		case 1: 
		c = color(255); 
		break; 
		case 2: 
		c = color(255, 255, 0); 
		break; 
		case 3: 
		c = color(255, 0, 0); 
		break; 
		case 4: 
		c = color(255, 128, 0); 
		break; 
		case 5: 
		c = color(0, 255, 0); 
		break; 
		case 6: 
		c = color(0, 0, 255); 
		break;
	} 
	return c;
} 
void turnFace(int[][] face, int n) {
	int temp; 
	if (n == 0) {   
		temp = front[0][0]; 
		front[0][0] = right[0][0]; 
		right[0][0] = back[0][0]; 
		back[0][0] = left[0][0]; 
		left[0][0]=temp; 
		temp = front[1][0]; 
		front[1][0] = right[1][0]; 
		right[1][0] = back[1][0]; 
		back[1][0] = left[1][0]; 
		left[1][0]=temp; 
		temp = front[2][0]; 
		front[2][0] = right[2][0]; 
		right[2][0] = back[2][0]; 
		back[2][0] = left[2][0]; 
		left[2][0]=temp;
	} 
	if (n == 1) {       
		temp = front[0][2]; 
		front[0][2] = left[0][2]; 
		left[0][2] = back[0][2]; 
		back[0][2] = right[0][2]; 
		right[0][2]=temp; 
		temp = front[1][2]; 
		front[1][2] = left[1][2]; 
		left[1][2] = back[1][2]; 
		back[1][2] = right[1][2]; 
		right[1][2]=temp; 
		temp = front[2][2]; 
		front[2][2] = left[2][2]; 
		left[2][2] = back[2][2]; 
		back[2][2] = right[2][2]; 
		right[2][2]=temp;
	} 
	if (n == 2) {
		temp = front[2][0]; 
		front[2][0] = down[2][0]; 
		down[2][0] = back[0][2]; 
		back[0][2] = up[2][0]; 
		up[2][0]=temp; 
		temp = front[2][1]; 
		front[2][1] = down[2][1]; 
		down[2][1] = back[0][1]; 
		back[0][1] = up[2][1]; 
		up[2][1]=temp; 
		temp = front[2][2]; 
		front[2][2] = down[2][2]; 
		down[2][2] = back[0][0]; 
		back[0][0] = up[2][2]; 
		up[2][2]=temp;
	} 
	if (n == 3) {     
		temp = back[2][0]; 
		back[2][0] = down[0][2]; 
		down[0][2] = front[0][2]; 
		front[0][2] = up[0][2]; 
		up[0][2]=temp; 
		temp = back[2][1]; 
		back[2][1] = down[0][1]; 
		down[0][1] = front[0][1]; 
		front[0][1] = up[0][1]; 
		up[0][1]=temp; 
		temp = back[2][2]; 
		back[2][2] = down[0][0]; 
		down[0][0] = front[0][0]; 
		front[0][0] = up[0][0]; 
		up[0][0]=temp;
	} 
	if (n == 4) {
		temp = up[0][2]; 
		up[0][2] = left[2][2]; 
		left[2][2] = down[2][0]; 
		down[2][0] = right[0][0]; 
		right[0][0]=temp; 
		temp = up[1][2]; 
		up[1][2] = left[2][1]; 
		left[2][1] = down[1][0]; 
		down[1][0] = right[0][1]; 
		right[0][1]=temp; 
		temp = up[2][2]; 
		up[2][2] = left[2][0]; 
		left[2][0] = down[0][0]; 
		down[0][0] = right[0][2]; 
		right[0][2]=temp;
	} 
	if (n == 5) {     
		temp = up[0][0]; 
		up[0][0] = right[2][0]; 
		right[2][0] = down[2][2]; 
		down[2][2] = left[0][2]; 
		left[0][2]=temp; 
		temp = up[1][0]; 
		up[1][0] = right[2][1]; 
		right[2][1] = down[1][2]; 
		down[1][2] = left[0][1]; 
		left[0][1]=temp; 
		temp = up[2][0]; 
		up[2][0] = right[2][2]; 
		right[2][2] = down[0][2]; 
		down[0][2] = left[0][0]; 
		left[0][0]=temp;
	} 
	temp = face[0][0]; 
	face[0][0] = face[0][2]; 
	face[0][2] = face[2][2]; 
	face[2][2] = face[2][0]; 
	face[2][0] = temp; 
	temp = face[0][1]; 
	face[0][1] = face[1][2]; 
	face[1][2] = face[2][1]; 
	face[2][1] = face[1][0]; 
	face[1][0] = temp;
} 
void keyPressed() {
	if (key == 'u') turnFace(up, 0); 
	if (key == 'd') turnFace(down, 1); 
	if (key == 'r') turnFace(right, 2); 
	if (key == 'l') turnFace(left, 3); 
	if (key == 'f') turnFace(front, 4); 
	if (key == 'b') turnFace(back, 5); 
	if (key == 's') scramble();
} 
void paintFace(int[][] face, int x, int y, int z, float rotX, float rotY, float rotZ) {
	pushMatrix(); 
	translate(x, y, z); 
	rotateX(rotX); 
	rotateY(rotY); 
	rotateZ(rotZ); 
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 3; j++) {
			fill(setColor(face[i][j])); 
			rect(i*s, j*s, s, s);
		}
	} 
	popMatrix();
} 
void scramble() {
	for (int i = 0; i<20; i++) {
		int n = (int)random(0, 17); 
		switch(n) {
			case 0: 
			println("U"); 
			turnFace(up, 0); 
			break; 
			case 1: 
			println("D"); 
			turnFace(down, 1); 
			break; 
			case 2: 
			println("R"); 
			turnFace(right, 2); 
			break; 
			case 3: 
			println("L"); 
			turnFace(left, 3); 
			break; 
			case 4: 
			println("F"); 
			turnFace(front, 4); 
			break; 
			case 5: 
			println("B"); 
			turnFace(back, 5); 
			break; 
			case 6: 
			println("U'"); 
			turnFace(up, 0); 
			turnFace(up, 0); 
			turnFace(up, 0); 
			break; 
			case 7: 
			println("D'"); 
			turnFace(down, 1); 
			turnFace(down, 1); 
			turnFace(down, 1); 
			break; 
			case 8: 
			println("R'"); 
			turnFace(right, 2); 
			turnFace(right, 2); 
			turnFace(right, 2); 
			break; 
			case 9: 
			println("L'"); 
			turnFace(left, 3); 
			turnFace(left, 3); 
			turnFace(left, 3); 
			break; 
			case 10: 
			println("F'"); 
			turnFace(front, 4); 
			turnFace(front, 4); 
			turnFace(front, 4); 
			break; 
			case 11: 
			println("B'"); 
			turnFace(back, 5); 
			turnFace(back, 5); 
			turnFace(back, 5); 
			break; 
			case 12: 
			println("U2"); 
			turnFace(up, 0); 
			turnFace(up, 0); 
			break; 
			case 13: 
			println("D2"); 
			turnFace(down, 1); 
			turnFace(down, 1); 
			break; 
			case 14: 
			println("R2"); 
			turnFace(right, 2); 
			turnFace(right, 2); 
			break; 
			case 15: 
			println("L2"); 
			turnFace(left, 3); 
			turnFace(left, 3); 
			break; 
			case 16: 
			println("F2"); 
			turnFace(front, 4); 
			turnFace(front, 4); 
			break; 
			case 17: 
			println("B2"); 
			turnFace(back, 5); 
			turnFace(back, 5); 
			break;
		}
	}
} 
float cx, cy, cz, rotationv, rotationh; 
void draw() {
	background(0); 
	camera(cx, cy, cz, 0, 0, 0, 0, 1, 0); 
	cy= sin(radians(rotationv))*1000; 
	cx= cos(radians(rotationv))*1000; 
	cx= cos(radians(rotationh))*1000; 
	cz= sin(radians(rotationh))*1000; 
	if (mousePressed) {
		if (mouseX-pmouseX<0)rotationh-=2; 
		else if (mouseX-pmouseX>0)rotationh+=2; 
		if (mouseY-pmouseY<0)rotationv+=2; 
		else if (mouseY-pmouseY>0)rotationv-=2;
	} 
	translate(-s*3/2, -s*3/2, s*3/2); 
	paintFace(up, 0, 0, -s*3, PI/2, 0, 0); 
	paintFace(down, 0, s*3, 0, -PI/2, 0, 0); 
	paintFace(right, s*3, 0, 0, 0, PI/2, 0); 
	paintFace(left, 0, 0, -s*3, 0, -PI/2, 0); 
	paintFace(front, 0, 0, 0, 0, 0, 0); 
	paintFace(back, s*3, 0, -s*3, 0, PI, 0);
}