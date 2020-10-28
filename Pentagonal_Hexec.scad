//Pentagonal Hexecontahedron

phi = (1+sqrt(5))/2;
a = sqrt(phi-5/27);
b = pow((phi + a)/2,1/3);
c = pow((phi - a)/2,1/3);
x = b + c;

C0  = phi * sqrt(3 - pow(x,2)) / 2;
C1  = phi * sqrt((x - 1 - (1/x)) * phi) / (2 * x);
C2  = phi * sqrt((x - 1 - (1/x)) * phi) / 2;
C3  = pow(x,2) * phi * sqrt(3 - pow(x,2)) / 2;
C4  = phi * sqrt(1 - x + (phi + 1) / x) / 2;
C5  = sqrt(x * (x + phi) + 1) / (2 * x);
C6  = sqrt((x + 2) * phi + 2) / (2 * x);
C7  = sqrt(-pow(x,2) * (phi + 2) + x * (3 * phi + 1) + 4) / 2;
C8  = (phi + 1) * sqrt(1 + (1/x)) / (2 * x);
C9  = sqrt(3 * phi + 2 - 2 * x + (3/x)) / 2;
C10 = sqrt(pow(x,2)*(225*phi + 392) + x*(670*phi + 249) + (157*phi + 470))/62;
C11 = phi * sqrt(x * (x + phi) + 1) / (2 * x);
C12 = phi * sqrt(pow(x,2) + x + phi + 1) / (2 * x);
C13 = phi * sqrt(pow(x,2) + 2 * x * phi + 2) / (2 * x);
C14 = sqrt(pow(x,2) * (2 * phi + 1) - phi) / 2;
C15 = phi * sqrt(pow(x,2) + x) / 2;
C16 = pow(phi,3) * sqrt(x * (x + phi) + 1) / (2 * pow(x,2));
C17 = sqrt(pow(x,2)*(842*phi + 617) + x*(1589*phi + 919) + (784*phi + 627))/62;
C18 = pow(phi,2) * sqrt(x * (x + phi) + 1) / (2 * x);
C19 = phi * sqrt(x * (x + phi) + 1) / 2;

font = "Liberation Sans";
letter_size = 5;
letter_height = 0.75;
lsx = 5.4;

gr =  (1 + sqrt(5))/2;
// rotate([35.88,0,0])

scale(1.25)

union ()
{
scale(12)
polyhedron(Pentagonal_Hexec_cords, Pentagonal_Hexec_faces);
decorate_15();
}

Pentagonal_Hexec_cords = [
    [  C0,   C1,  C19],
    [  C0,  -C1, -C19],
    [ -C0,  -C1,  C19],
    [ -C0,   C1, -C19],
    [ C19,   C0,   C1],
    [ C19,  -C0,  -C1],
    [-C19,  -C0,   C1],
    [-C19,   C0,  -C1],
    [  C1,  C19,   C0],
    [  C1, -C19,  -C0],
    [ -C1, -C19,   C0],
    [ -C1,  C19,  -C0],
    [ 0.0,   C5,  C18],
    [ 0.0,   C5, -C18],
    [ 0.0,  -C5,  C18],
    [ 0.0,  -C5, -C18],
    [ C18,  0.0,   C5],
    [ C18,  0.0,  -C5],
    [-C18,  0.0,   C5],
    [-C18,  0.0,  -C5],
    [  C5,  C18,  0.0],
    [  C5, -C18,  0.0],
    [ -C5,  C18,  0.0],
    [ -C5, -C18,  0.0],
    [ C10,  0.0,  C17],
    [ C10,  0.0, -C17],
    [-C10,  0.0,  C17],
    [-C10,  0.0, -C17],
    [ C17,  C10,  0.0],
    [ C17, -C10,  0.0],
    [-C17,  C10,  0.0],
    [-C17, -C10,  0.0],
    [ 0.0,  C17,  C10],
    [ 0.0,  C17, -C10],
    [ 0.0, -C17,  C10],
    [ 0.0, -C17, -C10],
    [  C3,  -C6,  C16],
    [  C3,   C6, -C16],
    [ -C3,   C6,  C16],
    [ -C3,  -C6, -C16],
    [ C16,  -C3,   C6],
    [ C16,   C3,  -C6],
    [-C16,   C3,   C6],
    [-C16,  -C3,  -C6],
    [  C6, -C16,   C3],
    [  C6,  C16,  -C3],
    [ -C6,  C16,   C3],
    [ -C6, -C16,  -C3],
    [  C2,   C9,  C15],
    [  C2,  -C9, -C15],
    [ -C2,  -C9,  C15],
    [ -C2,   C9, -C15],
    [ C15,   C2,   C9],
    [ C15,  -C2,  -C9],
    [-C15,  -C2,   C9],
    [-C15,   C2,  -C9],
    [  C9,  C15,   C2],
    [  C9, -C15,  -C2],
    [ -C9, -C15,   C2],
    [ -C9,  C15,  -C2],
    [  C7,   C8,  C14],
    [  C7,  -C8, -C14],
    [ -C7,  -C8,  C14],
    [ -C7,   C8, -C14],
    [ C14,   C7,   C8],
    [ C14,  -C7,  -C8],
    [-C14,  -C7,   C8],
    [-C14,   C7,  -C8],
    [  C8,  C14,   C7],
    [  C8, -C14,  -C7],
    [ -C8, -C14,   C7],
    [ -C8,  C14,  -C7],
    [  C4, -C12,  C13],
    [  C4,  C12, -C13],
    [ -C4,  C12,  C13],
    [ -C4, -C12, -C13],
    [ C13,  -C4,  C12],
    [ C13,   C4, -C12],
    [-C13,   C4,  C12],
    [-C13,  -C4, -C12],
    [ C12, -C13,   C4],
    [ C12,  C13,  -C4],
    [-C12,  C13,   C4],
    [-C12, -C13,  -C4],
    [ C11,  C11,  C11],
    [ C11,  C11, -C11],
    [ C11, -C11,  C11],
    [ C11, -C11, -C11],
    [-C11,  C11,  C11],
    [-C11,  C11, -C11],
    [-C11, -C11,  C11],
    [-C11, -C11, -C11]
   ];

Pentagonal_Hexec_faces = [
    [ 24,  0,  2, 14, 36 ],
    [ 24, 36, 72, 86, 76 ],
    [ 24, 76, 40, 16, 52 ],
    [ 24, 52, 64, 84, 60 ],
    [ 24, 60, 48, 12,  0 ],
    [ 25,  1,  3, 13, 37 ],
    [ 25, 37, 73, 85, 77 ],
    [ 25, 77, 41, 17, 53 ],
    [ 25, 53, 65, 87, 61 ],
    [ 25, 61, 49, 15,  1 ],
    [ 26,  2,  0, 12, 38 ],
    [ 26, 38, 74, 88, 78 ],
    [ 26, 78, 42, 18, 54 ],
    [ 26, 54, 66, 90, 62 ],
    [ 26, 62, 50, 14,  2 ],
    [ 27,  3,  1, 15, 39 ],
    [ 27, 39, 75, 91, 79 ],
    [ 27, 79, 43, 19, 55 ],
    [ 27, 55, 67, 89, 63 ],
    [ 27, 63, 51, 13,  3 ],
    [ 28,  4,  5, 17, 41 ],
    [ 28, 41, 77, 85, 81 ],
    [ 28, 81, 45, 20, 56 ],
    [ 28, 56, 68, 84, 64 ],
    [ 28, 64, 52, 16,  4 ],
    [ 29,  5,  4, 16, 40 ],
    [ 29, 40, 76, 86, 80 ],
    [ 29, 80, 44, 21, 57 ],
    [ 29, 57, 69, 87, 65 ],
    [ 29, 65, 53, 17,  5 ],
    [ 30,  7,  6, 18, 42 ],
    [ 30, 42, 78, 88, 82 ],
    [ 30, 82, 46, 22, 59 ],
    [ 30, 59, 71, 89, 67 ],
    [ 30, 67, 55, 19,  7 ],
    [ 31,  6,  7, 19, 43 ],
    [ 31, 43, 79, 91, 83 ],
    [ 31, 83, 47, 23, 58 ],
    [ 31, 58, 70, 90, 66 ],
    [ 31, 66, 54, 18,  6 ],
    [ 32,  8, 11, 22, 46 ],
    [ 32, 46, 82, 88, 74 ],
    [ 32, 74, 38, 12, 48 ],
    [ 32, 48, 60, 84, 68 ],
    [ 32, 68, 56, 20,  8 ],
    [ 33, 11,  8, 20, 45 ],
    [ 33, 45, 81, 85, 73 ],
    [ 33, 73, 37, 13, 51 ],
    [ 33, 51, 63, 89, 71 ],
    [ 33, 71, 59, 22, 11 ],
    [ 34, 10,  9, 21, 44 ],
    [ 34, 44, 80, 86, 72 ],
    [ 34, 72, 36, 14, 50 ],
    [ 34, 50, 62, 90, 70 ],
    [ 34, 70, 58, 23, 10 ],
    [ 35,  9, 10, 23, 47 ],
    [ 35, 47, 83, 91, 75 ],
    [ 35, 75, 39, 15, 49 ],
    [ 35, 49, 61, 87, 69 ],
    [ 35, 69, 57, 21,  9 ]
   ];

module decorate_15()
  {
    decorate (   2*gr, -gr*gr,  gr  ,"1",0,2,180);
    decorate (   1,  -gr*gr*gr,  1  ,"1",0,-3,0);
    decorate (    gr*gr*gr, -1,  1  ,"1",3,2,-225);
    decorate (    gr*gr*gr,  1, -1  ,"1",-1.5,-2,-45);

    decorate (    gr*gr*gr, -1, -1  ,"2",2,-1.5,45);
    decorate (    gr*gr*gr,  1,  1  ,"2",-3,2,225);
    decorate (   2*gr, -gr*gr, -gr  ,"2",-1,-2,-30);
    decorate (   (2+gr),  0,  -gr*gr  ,"2",0,3,180);

    decorate (   gr*gr,  -(2+gr),  0  ,"3",0,-3,0);
    decorate (   gr, -2*gr,  gr*gr  ,"3",2,-1,90);
    decorate (   1,   gr*gr*gr,  1  ,"3",-2,-2,-45);
    decorate (  -1,   gr*gr*gr, -1  ,"3",2,1,135);

    decorate (  -1,   gr*gr*gr,  1  ,"4",2,-2,45);
    decorate (  -2*gr,  gr*gr,  gr  ,"4",0,3,180);
    decorate (   0,   gr*gr,  (2+gr)  ,"4",0,3,180);
    decorate (   gr*gr,  gr,  2*gr  ,"4",2,-2,45);

    decorate (  -gr,  2*gr,  gr*gr  ,"5",3,0,90);
    decorate (  -gr*gr,   (2+gr),  0  ,"5",-2,0,-90);
    decorate (   gr,  2*gr,  gr*gr  ,"5",-2,0,-90);
    decorate (   gr*gr,   (2+gr),  0  ,"5",3,0,90);

    decorate (   -gr*gr*gr, -1, -1  ,"6",-3,-2,-45);
    decorate (  -gr*gr, -gr, -2*gr  ,"6",3,1,120);
    decorate (  -2*gr, -gr*gr, -gr  ,"6",2,-3,30);
    decorate (  -1,  -gr*gr*gr, -1  ,"6",-2,2,225);

    decorate (   0,  -gr*gr,  (2+gr)  ,"7",0,3,180);
    decorate (   gr*gr, -gr,  2*gr  ,"7",-1.5,-1.5,-60);
    decorate (  -1,  -gr*gr*gr,  1  ,"7",-2,-2,-45);
    decorate (   1,  -gr*gr*gr, -1  ,"7",0,3,150);

    decorate (  -gr, -2*gr,  gr*gr  ,"8",-2,0,-90);
    decorate (  -gr*gr,  -(2+gr),  0  ,"8",2,0,90);
    decorate (  -(2+gr),  0,   gr*gr  ,"8",0,-3,0);
    decorate (  -2*gr, -gr*gr,  gr  ,"8",1,3,-210);

    decorate ( -1, 1, gr*gr*gr  ,"9",-3,1,-120);
    decorate (  1, -1, gr*gr*gr  ,"9",-2,-1,-90);
    decorate ( -1, -1, gr*gr*gr  ,"9",2,0,90);
    decorate (  1, 1, gr*gr*gr  ,"9",3,-1,90);

    decorate (  -gr*gr,  gr,  2*gr  ,"10",-2,-3,-30);
    decorate (   -gr*gr*gr,  1,  1  ,"10",3,1,120);
    decorate (  -gr*gr, -gr,  2*gr  ,"10",1,-3,30);
    decorate (   -gr*gr*gr, -1,  1  ,"10",-3,2,-120);

    decorate (   -gr*gr*gr,  1, -1  ,"11",1,-2,45);
    decorate (  -gr*gr,  gr, -2*gr  ,"11",-3,2,-120);
    decorate (  -2*gr,  gr*gr, -gr  ,"11",0,-3,-20);
    decorate (  -(2+gr),  0,  -gr*gr  ,"11",0,3,180);

    decorate (   gr,  2*gr, -gr*gr  ,"12",-2,1,-90);
    decorate (  1,  1, -gr*gr*gr  ,"12",3,0,90);
    decorate (   1,   gr*gr*gr, -1  ,"12",-3,1,-120);
    decorate (   2*gr,  gr*gr, -gr  ,"12",-1,-2,0);

    decorate (   0,   gr*gr, -(2+gr),"13",0,-2,0);
    decorate (   gr*gr,  gr, -2*gr  ,"13",2,1,135);
    decorate (  -gr,  2*gr, -gr*gr  ,"13",3,0,90);
    decorate ( -1, 1, -gr*gr*gr  ,"13",-3,-1,-60);

    decorate (   2*gr,  gr*gr,  gr  ,"14",0,3,180);
    decorate (   (2+gr),  0,   gr*gr  ,"14",0,-3,0);
    decorate (   0,  -gr*gr, -(2+gr)  ,"14",0,-3,0);
    decorate (   gr*gr, -gr, -2*gr  ,"14",-1,2,210);

    decorate (  -gr, -2*gr, -gr*gr  ,"15",-3,0,-90);
    decorate ( -1, -1, -gr*gr*gr  ,"15",3,0,90);
    decorate (   gr, -2*gr, -gr*gr  ,"15",3,0,90);
    decorate (  1, -1, -gr*gr*gr  ,"15",-2,0,-90);
  }

module decorate (x2,y2,z2,char,x3,y3,ang)
  {
    translate(v=[lsx*x2,lsx*y2,lsx*z2])
    rotate(a = -[acos(z2/sqrt(x2*x2+y2*y2+z2*z2)), 0, atan2(x2, y2)])
    linear_extrude(height = letter_height, center = false)
    translate([x3,y3,0])
    rotate([0,0,ang])
    {text(char,size = letter_size, font = font, halign = "center", valign = "center", $fn = 16);};
  }