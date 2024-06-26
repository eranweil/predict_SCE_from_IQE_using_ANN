model.component('comp1').variable.create('var1');
model.component('comp1').variable('var1').set('G', 'alpha(Lambda0)*PHY0', 'generation rate');
model.component('comp1').variable('var1').set('R', '((n(Lambda0) - 1)^2+k(Lambda0)^2)/((n(Lambda0) + 1)^2+k(Lambda0)^2)', 'return constant');
model.component('comp1').variable('var1').set('PHY0', 'PHY*exp(-x*alpha(Lambda0))', 'photon flux');
model.component('comp1').variable.create('var3');
model.component('comp1').variable('var3').set('delta_G', '0');
model.component('comp1').variable('var3').set('G_tot', '(1-R)*G');
model.component('comp1').variable.create('var4');
model.component('comp1').variable('var4').set('delta_G', '0');
model.component('comp1').variable('var4').set('G_tot', '0');
model.component('comp1').variable.create('var2');
model.component('comp1').variable('var2').set('delta_G', 'delta_amplitude_b * (1/(sigma *sqrt(2 * pi) ))*exp(-0.5 * (((x-loc0)/sigma)^2))');
model.component('comp1').variable('var2').set('G_tot', '(1-R)*G', 'generation rate after loss');
model.component('comp1').variable('var1').label('Variables_all_studies');
model.component('comp1').variable('var3').label('delta_G_study1');
model.component('comp1').variable('var4').label('delta_G_study2');
model.component('comp1').variable('var2').label('delta_G_study3');