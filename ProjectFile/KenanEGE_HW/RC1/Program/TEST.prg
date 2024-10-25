1 ma1=5
2 mc1=0
3 mb1=0
4 mTotal=0
5 M_Out(130)=0
6 M_Out(131)=1
7 M_Out(132)=1
8 M_Out(133)=1
9 M_Out(134)=1
10 M_Out(135)=1
11 M_Out(136)=1
12 M_Out(141)=0
13 M_Out(142)=0
14 M_Out(143)=0
15 M_Out(144)=0
16 M_Out(145)=0
17 M_Out(146)=0
18 M_Out(151)=0
19 M_Out(152)=0
20 M_Out(153)=0
21 M_Out(154)=0
22 M_Out(155)=0
23 M_Out(156)=0
24 While 1
25     masaAson=0
26     masaBson=0
27     masaCson=0
28     mTotal=mc1+mb1
29     Wait M_In8(100) <> 0
30     Wait (M_In(10111)=0 And mTotal<6) Or (M_In(10111)=1 And mTotal<6)
31     If M_Out(131)=0 Then Mov phome
32     If M_In(15)=1 Then
33         M_Out(141)=0
34         M_Out(142)=0
35         M_Out(143)=0
36         M_Out(144)=0
37         M_Out(145)=0
38         M_Out(146)=0
39         mb1 = 0
40     EndIf
41     If M_In(16)=1 Then
42         M_Out(151)=0
43         M_Out(152)=0
44         M_Out(153)=0
45         M_Out(154)=0
46         M_Out(155)=0
47         M_Out(156)=0
48         mc1 = 0
49     EndIf
50     If M_Out(130)=0 And ma1>=0 Then
51         If (ma1=5 And masaAson=0) Then
52             Mov pmasaA1, -50
53             Mvs pmasaA1
54             M_Out(130)=1
55             M_Out(131)=0
56             Dly 1
57             Mov pmasaA1, -50
58             ma1=ma1-1
59             masaAson=1
60         EndIf
61         If (ma1=4 And masaAson=0) Then
62             Mov pmasaA2, -50
63             Mvs pmasaA2
64             M_Out(130)=1
65             M_Out(132)=0
66             Dly 1
67             Mov pmasaA2, -50
68             ma1=ma1-1
69             masaAson=1
70         EndIf
71         If (ma1=3 And masaAson=0) Then
72             Mov pmasaA3, -50
73             Mvs pmasaA3
74             M_Out(130)=1
75             M_Out(133)=0
76             Dly 1
77             Mov pmasaA3, -50
78             ma1=ma1-1
79             masaAson=1
80         EndIf
81         If (ma1=2 And masaAson=0) Then
82             Mov pmasaA4, -50
83             Mvs pmasaA4
84             M_Out(130)=1
85             M_Out(134)=0
86             Dly 1
87             Mov pmasaA4, -50
88             ma1=ma1-1
89             masaAson=1
90         EndIf
91         If (ma1=1 And masaAson=0) Then
92             Mov pmasaA5, -50
93             Mvs pmasaA5
94             M_Out(130)=1
95             M_Out(135)=0
96             Dly 1
97             Mov pmasaA5, -50
98             ma1=ma1-1
99             masaAson=1
100         EndIf
101         If (ma1=0 And masaAson=0) Then
102             Mov pmasaA6, -50
103             Mvs pmasaA6
104             M_Out(130)=1
105             M_Out(136)=0
106             Dly 1
107             Mov pmasaA6, -50
108             ma1=ma1-1
109             masaAson=1
110         EndIf
111     EndIf
112     If M_In(10111)=0 And mTotal<6 Then
113         If (mb1=0 And masaBson=0) Then
114             Mov pmasaB1, -50
115             Mvs pmasaB1
116             M_Out(130)=0
117             M_Out(141)=1
118             mb1=mb1+1
119             Dly 1
120             Mov pmasaB1, -50
121             masaBson=1
122         EndIf
123         If (mb1=1 And masaBson=0) Then
124             Mov pmasaB2, -50
125             Mvs pmasaB2
126             M_Out(130)=0
127             M_Out(142)=1
128             mb1=mb1+1
129             Dly 1
130             Mov pmasaB2, -50
131             masaBson=1
132         EndIf
133         If (mb1=2 And masaBson=0) Then
134             Mov pmasaB3, -50
135             Mvs pmasaB3
136             M_Out(130)=0
137             M_Out(143)=1
138             mb1=mb1+1
139             Dly 1
140             Mov pmasaB3, -50
141             masaBson=1
142         EndIf
143         If (mb1=3 And masaBson=0) Then
144             Mov pmasaB4, -50
145             Mvs pmasaB4
146             M_Out(130)=0
147             M_Out(144)=1
148             mb1=mb1+1
149             Dly 1
150             Mov pmasaB4, -50
151             masaBson=1
152         EndIf
153         If (mb1=4 And masaBson=0) Then
154             Mov pmasaB5, -50
155             Mvs pmasaB5
156             M_Out(130)=0
157             M_Out(145)=1
158             mb1=mb1+1
159             Dly 1
160             Mov pmasaB5, -50
161             masaBson=1
162         EndIf
163         If (mb1=5 And masaBson=0) Then
164             Mov pmasaB6, -50
165             Mvs pmasaB6
166             M_Out(130)=0
167             M_Out(146)=1
168             mb1=mb1+1
169             Dly 1
170             Mov pmasaB6, -50
171             masaBson=1
172         EndIf
173     EndIf
174     If M_In(10111)=1 And mTotal<6 Then
175         If (mc1=0 And masaCson=0) Then
176             Mov pmasaC1, -50
177             Mvs pmasaC1
178             M_Out(130)=0
179             M_Out(151)=1
180             mc1=mc1+1
181             Dly 1
182             Mov pmasaC1, -50
183             masaCson=1
184         EndIf
185         If (mc1=1 And masaCson=0) Then
186             Mov pmasaC2, -50
187             Mvs pmasaC2
188             M_Out(130)=0
189             M_Out(152)=1
190             mc1=mc1+1
191             Dly 1
192             Mov pmasaC1, -50
193             masaCson=1
194         EndIf
195         If (mc1=2 And masaCson=0) Then
196             Mov pmasaC3, -50
197             Mvs pmasaC3
198             M_Out(130)=0
199             M_Out(153)=1
200             mc1=mc1+1
201             Dly 1
202             Mov pmasaC3, -50
203             masaCson=1
204         EndIf
205         If (mc1=3 And masaCson=0) Then
206             Mov pmasaC4, -50
207             Mvs pmasaC4
208             M_Out(130)=0
209             M_Out(154)=1
210             mc1=mc1+1
211             Dly 1
212             Mov pmasaC4, -50
213             masaCson=1
214         EndIf
215         If (mc1=4 And masaCson=0) Then
216             Mov pmasaC5, -50
217             Mvs pmasaC5
218             M_Out(130)=0
219             M_Out(155)=1
220             mc1=mc1+1
221             Dly 1
222             Mov pmasaC5, -50
223             masaCson=1
224         EndIf
225         If (mb1=5 And masaCson=0) Then
226             Mov pmasaC6, -50
227             Mvs pmasaC6
228             M_Out(130)=0
229             M_Out(156)=1
230             mc1=mc1+1
231             Dly 1
232             Mov pmasaC6, -50
233             masaCson=1
234         EndIf
235     EndIf
236 WEnd
phome=(+500.00,+8.00,+700.00,+180.00,+0.03,-180.00)(7,0)
pmasaA1=(+500.00,+8.00,+650.00,+180.00,+0.03,-180.00)(7,0)
pmasaA2=(+500.00,+60.00,+650.00,+180.00,+0.03,-180.00)(7,0)
pmasaA3=(+440.00,-52.00,+650.00,+180.00,+0.03,-180.00)(7,0)
pmasaA4=(+440.00,+68.00,+650.00,+180.00,+0.03,-180.00)(7,0)
pmasaA5=(+500.00,-52.00,+650.00,+180.00,+0.03,-180.00)(7,0)
pmasaA6=(+440.00,+8.00,+650.00,+180.00,+0.03,-180.00)(7,0)
pmasaB1=(-500.00,+8.00,+650.00,+180.00,+0.03,-180.00)(7,0)
pmasaB2=(-500.00,+68.00,+650.00,+180.00,+0.03,-180.00)(7,0)
pmasaB3=(-500.00,-52.00,+650.00,+180.00,+0.03,-180.00)(7,0)
pmasaB4=(-560.00,+8.00,+650.00,-180.00,+0.03,+180.00)(7,0)
pmasaB5=(-560.00,+68.00,+650.00,-180.00,+0.03,+180.00)(7,0)
pmasaB6=(-560.00,-52.00,+650.00,-180.00,+0.03,+180.00)(7,0)
pmasaC1=(-2.00,-500.00,+650.00,-180.00,+0.03,+180.00)(7,0)
pmasaC2=(-2.00,-440.00,+650.00,-180.00,+0.03,+180.00)(7,0)
pmasaC3=(-2.00,-560.00,+650.00,-180.00,+0.03,+180.00)(7,0)
pmasaC4=(+58.00,-440.00,+650.00,-180.00,+0.03,+180.00)(7,0)
pmasaC5=(+58.00,-500.00,+650.00,-180.00,+0.03,+180.00)(7,0)
pmasaC6=(+60.00,-560.00,+650.00,-180.00,+0.03,+180.00)(7,0)
