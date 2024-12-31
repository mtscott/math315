A1 = fd3d(1000, 1, 1, 0, 0, 0, 0);
A1s = fd3d(10, 1, 1, 0, 0, 0, 0);
[L1,U1] = lu(A1);

A2 = fd3d(100, 10, 1, 0, 0, 0, 0);
A2s = fd3d(5, 5, 1, 0, 0, 0, 0);
[L2,U2] = lu(A2);

A3 = fd3d(10, 10, 10, 0, 0, 0, 0);
A3s = fd3d(3, 3, 3, 0, 0, 0, 0);
[L3,U3] = lu(A3);

figure(1);
spy(A1s)
title('1D A')

figure(2);
spy(A2s)
title('2D A')

figure(3);
spy(A3s)
title('3D A')

figure(4);
subplot(3,3,1);
spy(A1)
title('1D A')
subplot(3,3,2);
spy(L1)
title('1D L')
subplot(3,3,3);
spy(U1)
title('1D U')

subplot(3,3,4);
spy(A2)
title('2D A')
subplot(3,3,5);
spy(L2)
title('2D L')
subplot(3,3,6);
spy(U2)
title('2D U')

subplot(3,3,7);
spy(A3)
title('3D A')
subplot(3,3,8);
spy(L3)
title('3D L')
subplot(3,3,9);
spy(U3)
title('3D U')