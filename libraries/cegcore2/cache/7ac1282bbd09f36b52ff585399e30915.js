/* form19260-g2.actions11026-g2.boot6500-g2.forms16883-g2663 */
/*!
 * # Semantic UI 2.2.6 - Form Validation
 * http://github.com/semantic-org/semantic-ui/
 *
 *
 * Released under the MIT license
 * http://opensource.org/licenses/MIT
 *
 */
!function(e,t,n,r){"use strict";t="undefined"!=typeof t&&t.Math==Math?t:"undefined"!=typeof self&&self.Math==Math?self:Function("return this")(),e.fn.form=function(t){var i,a=e(this),o=a.selector||"",l=(new Date).getTime(),s=[],u=arguments[0],c=arguments[1],f="string"==typeof u,d=[].slice.call(arguments,1);return a.each(function(){var p,m,g,h,v,b,y,x,k,E,w,C,V,R,S,F,A,T,j=e(this),D=this,O=[],z=!1;T={initialize:function(){T.get.settings(),f?(A===r&&T.instantiate(),T.invoke(u)):(A!==r&&A.invoke("destroy"),T.verbose("Initializing form validation",j,x),T.bindEvents(),T.set.defaults(),T.instantiate())},instantiate:function(){T.verbose("Storing instance of module",T),A=T,j.data(S,T)},destroy:function(){T.verbose("Destroying previous module",A),T.removeEvents(),j.removeData(S)},refresh:function(){T.verbose("Refreshing selector cache"),p=j.find(w.field),m=j.find(w.group),g=j.find(w.message),h=j.find(w.prompt),v=j.find(w.submit),b=j.find(w.clear),y=j.find(w.reset)},submit:function(){T.verbose("Submitting form",j),j.submit()},attachEvents:function(t,n){n=n||"submit",e(t).on("click"+F,function(e){T[n](),e.preventDefault()})},bindEvents:function(){T.verbose("Attaching form events"),j.on("submit"+F,T.validate.form).on("blur"+F,w.field,T.event.field.blur).on("click"+F,w.submit,T.submit).on("click"+F,w.reset,T.reset).on("click"+F,w.clear,T.clear),x.keyboardShortcuts&&j.on("keydown"+F,w.field,T.event.field.keydown),p.each(function(){var t=e(this),n=t.prop("type"),r=T.get.changeEvent(n,t);e(this).on(r+F,T.event.field.change)})},clear:function(){p.each(function(){var t=e(this),n=t.parent(),r=t.closest(m),i=r.find(w.prompt),a=t.data(E.defaultValue)||"",o=n.is(w.uiCheckbox),l=n.is(w.uiDropdown),s=r.hasClass(C.error);s&&(T.verbose("Resetting error on field",r),r.removeClass(C.error),i.remove()),l?(T.verbose("Resetting dropdown value",n,a),n.dropdown("clear")):o?t.prop("checked",!1):(T.verbose("Resetting field value",t,a),t.val(""))})},reset:function(){p.each(function(){var t=e(this),n=t.parent(),i=t.closest(m),a=i.find(w.prompt),o=t.data(E.defaultValue),l=n.is(w.uiCheckbox),s=n.is(w.uiDropdown),u=i.hasClass(C.error);o!==r&&(u&&(T.verbose("Resetting error on field",i),i.removeClass(C.error),a.remove()),s?(T.verbose("Resetting dropdown value",n,o),n.dropdown("restore defaults")):l?(T.verbose("Resetting checkbox value",n,o),t.prop("checked",o)):(T.verbose("Resetting field value",t,o),t.val(o)))})},is:{bracketedRule:function(e){return e.type&&e.type.match(x.regExp.bracket)},empty:function(e){return!e||0===e.length||(e.is('input[type="checkbox"]')?!e.is(":checked"):T.is.blank(e))},blank:function(t){return""===e.trim(t.val())},valid:function(){var t=!0;return T.verbose("Checking if form is valid"),e.each(k,function(e,n){T.validate.field(n,e)||(t=!1)}),t}},removeEvents:function(){j.off(F),p.off(F),v.off(F),p.off(F)},event:{field:{keydown:function(t){var n=e(this),r=t.which,i=n.is(w.input),a=n.is(w.checkbox),o=n.closest(w.uiDropdown).length>0,l={enter:13,escape:27};r==l.escape&&(T.verbose("Escape key pressed blurring field"),n.blur()),t.ctrlKey||r!=l.enter||!i||o||a||(z||(n.one("keyup"+F,T.event.field.keyup),T.submit(),T.debug("Enter pressed on input submitting form")),z=!0)},keyup:function(){z=!1},blur:function(t){var n=e(this),r=n.closest(m),i=T.get.validation(n);r.hasClass(C.error)?(T.debug("Revalidating field",n,i),i&&T.validate.field(i)):"blur"!=x.on&&"change"!=x.on||i&&T.validate.field(i)},change:function(t){var n=e(this),r=n.closest(m),i=T.get.validation(n);("change"==x.on||r.hasClass(C.error)&&x.revalidate)&&(clearTimeout(T.timer),T.timer=setTimeout(function(){T.debug("Revalidating field",n,T.get.validation(n)),T.validate.field(i)},x.delay))}}},get:{ancillaryValue:function(e){return!(!e.type||!e.value&&!T.is.bracketedRule(e))&&(e.value!==r?e.value:e.type.match(x.regExp.bracket)[1]+"")},ruleName:function(e){return T.is.bracketedRule(e)?e.type.replace(e.type.match(x.regExp.bracket)[0],""):e.type},changeEvent:function(e,t){return"checkbox"==e||"radio"==e||"hidden"==e||t.is("select")?"change":T.get.inputEvent()},inputEvent:function(){return n.createElement("input").oninput!==r?"input":n.createElement("input").onpropertychange!==r?"propertychange":"keyup"},prompt:function(e,t){var n,r,i,a=T.get.ruleName(e),o=T.get.ancillaryValue(e),l=e.prompt||x.prompt[a]||x.text.unspecifiedRule,s=l.search("{value}")!==-1,u=l.search("{name}")!==-1;return(u||s)&&(r=T.get.field(t.identifier)),s&&(l=l.replace("{value}",r.val())),u&&(n=r.closest(w.group).find("label").eq(0),i=1==n.length?n.text():r.prop("placeholder")||x.text.unspecifiedField,l=l.replace("{name}",i)),l=l.replace("{identifier}",t.identifier),l=l.replace("{ruleValue}",o),e.prompt||T.verbose("Using default validation prompt for type",l,a),l},settings:function(){if(e.isPlainObject(t)){var n,i=Object.keys(t),a=i.length>0&&(t[i[0]].identifier!==r&&t[i[0]].rules!==r);a?(x=e.extend(!0,{},e.fn.form.settings,c),k=e.extend({},e.fn.form.settings.defaults,t),T.error(x.error.oldSyntax,D),T.verbose("Extending settings from legacy parameters",k,x)):(t.fields&&(n=Object.keys(t.fields),("string"==typeof t.fields[n[0]]||e.isArray(t.fields[n[0]]))&&e.each(t.fields,function(n,r){"string"==typeof r&&(r=[r]),t.fields[n]={rules:[]},e.each(r,function(e,r){t.fields[n].rules.push({type:r})})})),x=e.extend(!0,{},e.fn.form.settings,t),k=e.extend({},e.fn.form.settings.defaults,x.fields),T.verbose("Extending settings",k,x))}else x=e.fn.form.settings,k=e.fn.form.settings.defaults,T.verbose("Using default form validation",k,x);R=x.namespace,E=x.metadata,w=x.selector,C=x.className,V=x.error,S="module-"+R,F="."+R,A=j.data(S),T.refresh()},field:function(t){return T.verbose("Finding field with identifier",t),p.filter("#"+t).length>0?p.filter("#"+t):p.filter('[name="'+t+'"]').length>0?p.filter('[name="'+t+'"]'):p.filter('[name="'+t+'[]"]').length>0?p.filter('[name="'+t+'[]"]'):p.filter("[data-"+E.validate+'="'+t+'"]').length>0?p.filter("[data-"+E.validate+'="'+t+'"]'):e("<input/>")},fields:function(t){var n=e();return e.each(t,function(e,t){n=n.add(T.get.field(t))}),n},validation:function(t){var n,r;return!!k&&(e.each(k,function(e,i){r=i.identifier||e,T.get.field(r)[0]==t[0]&&(i.identifier=r,n=i)}),n||!1)},value:function(e){var t,n=[];return n.push(e),t=T.get.values.call(D,n),t[e]},values:function(t){var n=e.isArray(t)?T.get.fields(t):p,r={};return n.each(function(t,n){var i=e(n),a=(i.prop("type"),i.prop("name")),o=i.val(),l=i.is(w.checkbox),s=i.is(w.radio),u=a.indexOf("[]")!==-1,c=!!l&&i.is(":checked");a&&(u?(a=a.replace("[]",""),r[a]||(r[a]=[]),l?c?r[a].push(o||!0):r[a].push(!1):r[a].push(o)):s?c&&(r[a]=o):l?c?r[a]=o||!0:r[a]=!1:r[a]=o)}),r}},has:{field:function(e){return T.verbose("Checking for existence of a field with identifier",e),"string"!=typeof e&&T.error(V.identifier,e),p.filter("#"+e).length>0||(p.filter('[name="'+e+'"]').length>0||p.filter("[data-"+E.validate+'="'+e+'"]').length>0)}},add:{prompt:function(t,n){var i=T.get.field(t),a=i.closest(m),o=a.children(w.prompt),l=0!==o.length;n="string"==typeof n?[n]:n,T.verbose("Adding field error state",t),a.addClass(C.error),x.inline&&(l||(o=x.templates.prompt(n),o.appendTo(a)),o.html(n[0]),l?T.verbose("Inline errors are disabled, no inline error added",t):x.transition&&e.fn.transition!==r&&j.transition("is supported")?(T.verbose("Displaying error with css transition",x.transition),o.transition(x.transition+" in",x.duration)):(T.verbose("Displaying error with fallback javascript animation"),o.fadeIn(x.duration)))},errors:function(e){T.debug("Adding form error messages",e),T.set.error(),g.html(x.templates.error(e))}},remove:{prompt:function(t){var n=T.get.field(t),i=n.closest(m),a=i.children(w.prompt);i.removeClass(C.error),x.inline&&a.is(":visible")&&(T.verbose("Removing prompt for field",t),x.transition&&e.fn.transition!==r&&j.transition("is supported")?a.transition(x.transition+" out",x.duration,function(){a.remove()}):a.fadeOut(x.duration,function(){a.remove()}))}},set:{success:function(){j.removeClass(C.error).addClass(C.success)},defaults:function(){p.each(function(){var t=e(this),n=t.filter(w.checkbox).length>0,r=n?t.is(":checked"):t.val();t.data(E.defaultValue,r)})},error:function(){j.removeClass(C.success).addClass(C.error)},value:function(e,t){var n={};return n[e]=t,T.set.values.call(D,n)},values:function(t){e.isEmptyObject(t)||e.each(t,function(t,n){var r,i=T.get.field(t),a=i.parent(),o=e.isArray(n),l=a.is(w.uiCheckbox),s=a.is(w.uiDropdown),u=i.is(w.radio)&&l,c=i.length>0;c&&(o&&l?(T.verbose("Selecting multiple",n,i),a.checkbox("uncheck"),e.each(n,function(e,t){r=i.filter('[value="'+t+'"]'),a=r.parent(),r.length>0&&a.checkbox("check")})):u?(T.verbose("Selecting radio value",n,i),i.filter('[value="'+n+'"]').parent(w.uiCheckbox).checkbox("check")):l?(T.verbose("Setting checkbox value",n,a),n===!0?a.checkbox("check"):a.checkbox("uncheck")):s?(T.verbose("Setting dropdown value",n,a),a.dropdown("set selected",n)):(T.verbose("Setting field value",n,i),i.val(n)))})}},validate:{form:function(e,t){var n=T.get.values();if(z)return!1;if(O=[],T.is.valid()){if(T.debug("Form has no validation errors, submitting"),T.set.success(),t!==!0)return x.onSuccess.call(D,e,n)}else if(T.debug("Form has errors"),T.set.error(),x.inline||T.add.errors(O),j.data("moduleApi")!==r&&e.stopImmediatePropagation(),t!==!0)return x.onFailure.call(D,O,n)},field:function(t,n){var i=t.identifier||n,a=T.get.field(i),o=!!t.depends&&T.get.field(t.depends),l=!0,s=[];return t.identifier||(T.debug("Using field name as identifier",i),t.identifier=i),a.prop("disabled")?(T.debug("Field is disabled. Skipping",i),l=!0):t.optional&&T.is.blank(a)?(T.debug("Field is optional and blank. Skipping",i),l=!0):t.depends&&T.is.empty(o)?(T.debug("Field depends on another value that is not present or empty. Skipping",o),l=!0):t.rules!==r&&e.each(t.rules,function(e,n){T.has.field(i)&&!T.validate.rule(t,n)&&(T.debug("Field is invalid",i,n.type),s.push(T.get.prompt(n,t)),l=!1)}),l?(T.remove.prompt(i,s),x.onValid.call(a),!0):(O=O.concat(s),T.add.prompt(i,s),x.onInvalid.call(a,s),!1)},rule:function(t,n){var i=T.get.field(t.identifier),a=(n.type,i.val()),o=T.get.ancillaryValue(n),l=T.get.ruleName(n),s=x.rules[l];return e.isFunction(s)?(a=a===r||""===a||null===a?"":e.trim(a+""),s.call(i,a,o)):void T.error(V.noRule,l)}},setting:function(t,n){if(e.isPlainObject(t))e.extend(!0,x,t);else{if(n===r)return x[t];x[t]=n}},internal:function(t,n){if(e.isPlainObject(t))e.extend(!0,T,t);else{if(n===r)return T[t];T[t]=n}},debug:function(){!x.silent&&x.debug&&(x.performance?T.performance.log(arguments):(T.debug=Function.prototype.bind.call(console.info,console,x.name+":"),T.debug.apply(console,arguments)))},verbose:function(){!x.silent&&x.verbose&&x.debug&&(x.performance?T.performance.log(arguments):(T.verbose=Function.prototype.bind.call(console.info,console,x.name+":"),T.verbose.apply(console,arguments)))},error:function(){x.silent||(T.error=Function.prototype.bind.call(console.error,console,x.name+":"),T.error.apply(console,arguments))},performance:{log:function(e){var t,n,r;x.performance&&(t=(new Date).getTime(),r=l||t,n=t-r,l=t,s.push({Name:e[0],Arguments:[].slice.call(e,1)||"",Element:D,"Execution Time":n})),clearTimeout(T.performance.timer),T.performance.timer=setTimeout(T.performance.display,500)},display:function(){var t=x.name+":",n=0;l=!1,clearTimeout(T.performance.timer),e.each(s,function(e,t){n+=t["Execution Time"]}),t+=" "+n+"ms",o&&(t+=" '"+o+"'"),a.length>1&&(t+=" ("+a.length+")"),(console.group!==r||console.table!==r)&&s.length>0&&(console.groupCollapsed(t),console.table?console.table(s):e.each(s,function(e,t){console.log(t.Name+": "+t["Execution Time"]+"ms")}),console.groupEnd()),s=[]}},invoke:function(t,n,a){var o,l,s,u=A;return n=n||d,a=D||a,"string"==typeof t&&u!==r&&(t=t.split(/[\. ]/),o=t.length-1,e.each(t,function(n,i){var a=n!=o?i+t[n+1].charAt(0).toUpperCase()+t[n+1].slice(1):t;if(e.isPlainObject(u[a])&&n!=o)u=u[a];else{if(u[a]!==r)return l=u[a],!1;if(!e.isPlainObject(u[i])||n==o)return u[i]!==r&&(l=u[i],!1);u=u[i]}})),e.isFunction(l)?s=l.apply(a,n):l!==r&&(s=l),e.isArray(i)?i.push(s):i!==r?i=[i,s]:s!==r&&(i=s),l}},T.initialize()}),i!==r?i:this},e.fn.form.settings={name:"Form",namespace:"form",debug:!1,verbose:!1,performance:!0,fields:!1,keyboardShortcuts:!0,on:"submit",inline:!1,delay:200,revalidate:!0,transition:"scale",duration:200,onValid:function(){},onInvalid:function(){},onSuccess:function(){return!0},onFailure:function(){return!1},metadata:{defaultValue:"default",validate:"validate"},regExp:{bracket:/\[(.*)\]/i,decimal:/^\d*(\.)\d+/,email:/^[a-z0-9!#$%&'*+\/=?^_`{|}~.-]+@[a-z0-9]([a-z0-9-]*[a-z0-9])?(\.[a-z0-9]([a-z0-9-]*[a-z0-9])?)*$/i,escape:/[\-\[\]\/\{\}\(\)\*\+\?\.\\\^\$\|]/g,flags:/^\/(.*)\/(.*)?/,integer:/^\-?\d+$/,number:/^\-?\d*(\.\d+)?$/,url:/(https?:\/\/(?:www\.|(?!www))[^\s\.]+\.[^\s]{2,}|www\.[^\s]+\.[^\s]{2,})/i},text:{unspecifiedRule:"Please enter a valid value",unspecifiedField:"This field"},prompt:{empty:"{name} must have a value",checked:"{name} must be checked",email:"{name} must be a valid e-mail",url:"{name} must be a valid url",regExp:"{name} is not formatted correctly",integer:"{name} must be an integer",decimal:"{name} must be a decimal number",number:"{name} must be set to a number",is:'{name} must be "{ruleValue}"',isExactly:'{name} must be exactly "{ruleValue}"',not:'{name} cannot be set to "{ruleValue}"',notExactly:'{name} cannot be set to exactly "{ruleValue}"',contain:'{name} cannot contain "{ruleValue}"',containExactly:'{name} cannot contain exactly "{ruleValue}"',doesntContain:'{name} must contain  "{ruleValue}"',doesntContainExactly:'{name} must contain exactly "{ruleValue}"',minLength:"{name} must be at least {ruleValue} characters",length:"{name} must be at least {ruleValue} characters",exactLength:"{name} must be exactly {ruleValue} characters",maxLength:"{name} cannot be longer than {ruleValue} characters",match:"{name} must match {ruleValue} field",different:"{name} must have a different value than {ruleValue} field",creditCard:"{name} must be a valid credit card number",minCount:"{name} must have at least {ruleValue} choices",exactCount:"{name} must have exactly {ruleValue} choices",maxCount:"{name} must have {ruleValue} or less choices"},selector:{checkbox:'input[type="checkbox"], input[type="radio"]',clear:".clear",field:"input, textarea, select",group:".field",input:"input",message:".error.message",prompt:".prompt.label",radio:'input[type="radio"]',reset:'.reset:not([type="reset"])',submit:'.submit:not([type="submit"])',uiCheckbox:".ui.checkbox",uiDropdown:".ui.dropdown"},className:{error:"error",label:"ui prompt label",pressed:"down",success:"success"},error:{identifier:"You must specify a string identifier for each field",method:"The method you called is not defined.",noRule:"There is no rule matching the one you specified",oldSyntax:"Starting in 2.0 forms now only take a single settings object. Validation settings converted to new syntax automatically."},templates:{error:function(t){var n='<ul class="list">';return e.each(t,function(e,t){n+="<li>"+t+"</li>"}),n+="</ul>",e(n)},prompt:function(t){return e("<div/>").addClass("ui basic red pointing prompt label").html(t[0])}},rules:{empty:function(t){return!(t===r||""===t||e.isArray(t)&&0===t.length)},checked:function(){return e(this).filter(":checked").length>0},email:function(t){return e.fn.form.settings.regExp.email.test(t)},url:function(t){return e.fn.form.settings.regExp.url.test(t)},regExp:function(t,n){if(n instanceof RegExp)return t.match(n);var r,i=n.match(e.fn.form.settings.regExp.flags);return i&&(n=i.length>=2?i[1]:n,r=i.length>=3?i[2]:""),t.match(new RegExp(n,r))},integer:function(t,n){var i,a,o,l=e.fn.form.settings.regExp.integer;return n&&["",".."].indexOf(n)===-1&&(n.indexOf("..")==-1?l.test(n)&&(i=a=n-0):(o=n.split("..",2),l.test(o[0])&&(i=o[0]-0),l.test(o[1])&&(a=o[1]-0))),l.test(t)&&(i===r||t>=i)&&(a===r||t<=a)},decimal:function(t){return e.fn.form.settings.regExp.decimal.test(t)},number:function(t){return e.fn.form.settings.regExp.number.test(t)},is:function(e,t){return t="string"==typeof t?t.toLowerCase():t,e="string"==typeof e?e.toLowerCase():e,e==t},isExactly:function(e,t){return e==t},not:function(e,t){return e="string"==typeof e?e.toLowerCase():e,t="string"==typeof t?t.toLowerCase():t,e!=t},notExactly:function(e,t){return e!=t},contains:function(t,n){return n=n.replace(e.fn.form.settings.regExp.escape,"\\$&"),t.search(new RegExp(n,"i"))!==-1},containsExactly:function(t,n){return n=n.replace(e.fn.form.settings.regExp.escape,"\\$&"),t.search(new RegExp(n))!==-1},doesntContain:function(t,n){return n=n.replace(e.fn.form.settings.regExp.escape,"\\$&"),t.search(new RegExp(n,"i"))===-1},doesntContainExactly:function(t,n){return n=n.replace(e.fn.form.settings.regExp.escape,"\\$&"),t.search(new RegExp(n))===-1},minLength:function(e,t){return e!==r&&e.length>=t},length:function(e,t){return e!==r&&e.length>=t},exactLength:function(e,t){return e!==r&&e.length==t},maxLength:function(e,t){return e!==r&&e.length<=t},match:function(t,n){var i;e(this);return e('[data-validate="'+n+'"]').length>0?i=e('[data-validate="'+n+'"]').val():e("#"+n).length>0?i=e("#"+n).val():e('[name="'+n+'"]').length>0?i=e('[name="'+n+'"]').val():e('[name="'+n+'[]"]').length>0&&(i=e('[name="'+n+'[]"]')),i!==r&&t.toString()==i.toString()},different:function(t,n){var i;e(this);return e('[data-validate="'+n+'"]').length>0?i=e('[data-validate="'+n+'"]').val():e("#"+n).length>0?i=e("#"+n).val():e('[name="'+n+'"]').length>0?i=e('[name="'+n+'"]').val():e('[name="'+n+'[]"]').length>0&&(i=e('[name="'+n+'[]"]')),i!==r&&t.toString()!==i.toString()},creditCard:function(t,n){var r,i,a={visa:{pattern:/^4/,length:[16]},amex:{pattern:/^3[47]/,length:[15]},mastercard:{pattern:/^5[1-5]/,length:[16]},discover:{pattern:/^(6011|622(12[6-9]|1[3-9][0-9]|[2-8][0-9]{2}|9[0-1][0-9]|92[0-5]|64[4-9])|65)/,length:[16]},unionPay:{pattern:/^(62|88)/,length:[16,17,18,19]},jcb:{pattern:/^35(2[89]|[3-8][0-9])/,length:[16]},maestro:{pattern:/^(5018|5020|5038|6304|6759|676[1-3])/,length:[12,13,14,15,16,17,18,19]},dinersClub:{pattern:/^(30[0-5]|^36)/,length:[14]},laser:{pattern:/^(6304|670[69]|6771)/,length:[16,17,18,19]},visaElectron:{pattern:/^(4026|417500|4508|4844|491(3|7))/,length:[16]}},o={},l=!1,s="string"==typeof n&&n.split(",");if("string"==typeof t&&0!==t.length){if(s&&(e.each(s,function(n,r){i=a[r],i&&(o={length:e.inArray(t.length,i.length)!==-1,pattern:t.search(i.pattern)!==-1},o.length&&o.pattern&&(l=!0))}),!l))return!1;if(r={number:e.inArray(t.length,a.unionPay.length)!==-1,pattern:t.search(a.unionPay.pattern)!==-1},r.number&&r.pattern)return!0;for(var u=t.length,c=0,f=[[0,1,2,3,4,5,6,7,8,9],[0,2,4,6,8,1,3,5,7,9]],d=0;u--;)d+=f[c][parseInt(t.charAt(u),10)],c^=1;return d%10===0&&d>0}},minCount:function(e,t){return 0==t||(1==t?""!==e:e.split(",").length>=t)},exactCount:function(e,t){return 0==t?""===e:1==t?""!==e&&e.search(",")===-1:e.split(",").length==t},maxCount:function(e,t){return 0!=t&&(1==t?e.search(",")===-1:e.split(",").length<=t)}}}}(jQuery,window,document);
(function($){
	if($.G2 == undefined){
		$.G2 = {};
	}
	$.G2.composer = {};
	
	$.G2.scrollTo = function(Elem){
		if(Elem.length > 0){
			$('html, body').animate({
				scrollTop: Elem.offset().top - 50
			}, 'slow');
		}
	};
	
	$.G2.composer.init = function(){
		var section = arguments[0];
		var args = arguments[1];
		
		$.G2.composer[section] = {};
		$.G2.composer[section].params = args;
	};
	
	$.G2.composer.ready = function(){
		var section = arguments[0];
		var args = arguments[1];
		
		$.extend($.G2.composer[section].params, args);
		
		$.each($.G2.composer[section].params, function(i, arr){
			$.G2[i]['ready'].apply($.G2[i], arr);
		});
	};
}(jQuery));
(function($){
	if($.G2 == undefined){
		$.G2 = {};
	}
	$.G2.boot = {};
	
	$.G2.boot.autocompleter = function(){
		$('[data-autocomplete]').each(function(i, dropfield){
			/*
			if($(dropfield).data('provider')){
				$($(dropfield).data('provider')).on('change', function(){
					$(dropfield).api('query');
				});
			}
			*/
			$(dropfield).closest('.ui.search.dropdown').dropdown({
				apiSettings : {
					url: $(dropfield).data('url') + '&' + $(dropfield).attr('name') + '={query}',
					cache : false,
					/*beforeSend: function(settings) {
						if($(dropfield).data('provider')){
							settings.data[$($(dropfield).data('provider')).attr('name')] = $($(dropfield).data('provider')).val();
						}
						return settings;
					},*/
					onResponse : function(Response){
						if(!Response.hasOwnProperty('results')){
							var results = [];
							results['success'] = true;
							results['results'] = [];
							
							var count = 0;
							$.each(Response, function(key, obj){
								results['results'][count] = {};
								results['results'][count]['value'] = key;
								results['results'][count]['name'] = obj;
								count = count + 1;
							});
							
							return results;
						}
					}
				},
				minCharacters: $(dropfield).data('mincharacters') ? $(dropfield).data('mincharacters') : 0,
				message : {noResults : $(dropfield).data('noresults') ? $(dropfield).data('noresults') : 'No results found'},
				//saveRemoteData:false
			});
		});
	};
	
	$.G2.boot.calendar = function(){
		//calendar
		$('[data-calendar]').each(function(i, calfield){
			var mindate = null;
			if($(calfield).data('mindate')){
				var parts = $(calfield).data('mindate').split('-');
				var mindate = new Date(parts[0], parts[1]-1, parts[2]); 
			}
			var maxdate = null;
			if($(calfield).data('maxdate')){
				var parts = $(calfield).data('maxdate').split('-');
				var maxdate = new Date(parts[0], parts[1]-1, parts[2]); 
			}
			if(jQuery.fn.calendar != undefined){
			$(calfield).closest('.field').calendar({
				startMode : $(calfield).data('startmode'),
				type : $(calfield).data('type'),
				minDate : mindate,
				maxDate : maxdate,
				startCalendar: $(calfield).data('startcalendar') ? $($(calfield).data('startcalendar')).closest('.field') : null,
				endCalendar: $(calfield).data('endcalendar') ? $($(calfield).data('endcalendar')).closest('.field') : null,
				firstDayOfWeek: $(calfield).data('firstday') ? $(calfield).data('firstday') : 0,
				
				formatter:{
					date: function (date, settings) {
						if (!date) return '';
						var day = date.getDate();
						day = ("0" + day).slice(-2);
						var month = date.getMonth() + 1;
						month = ("0" + month).slice(-2);
						
						var year = date.getFullYear();
						var hour = date.getHours();
						var minute = date.getMinutes();
						
						var value = $(calfield).data('format') ? $(calfield).data('format') : 'y-m-d';
						value = value.replace('y', year).replace('m', month).replace('d', day).replace('h', hour).replace('i', minute);
						
						return value;
					}
				},
				popupOptions:{
					position: $(calfield).data('popuppos') ? $(calfield).data('popuppos') : 'top center'
				},

				text:{
					days: $(calfield).data('days') ? $(calfield).data('days').split(',') : ['S', 'M', 'T', 'W', 'T', 'F', 'S'],
					months: $(calfield).data('months') ? $(calfield).data('months').split(',') : ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
					monthsShort: $(calfield).data('monthsshort') ? $(calfield).data('monthsshort').split(',') : ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
					today: $(calfield).data('today') ? $(calfield).data('today').split(',') : 'Today',
					now: $(calfield).data('now') ? $(calfield).data('now').split(',') : 'Now',
					am: $(calfield).data('am') ? $(calfield).data('am').split(',') : 'AM',
					pm: $(calfield).data('pm') ? $(calfield).data('pm').split(',') : 'PM'
				}
			});
			}
		});
	};
	
	$.G2.boot.ready = function(){
		$('body').on('contentChange', function(){
			if(jQuery.fn.tab != undefined){
				$('.ui.menu.G2-tabs .item, .ui.steps.G2-tabs .step').tab();
			}
			if(jQuery.fn.dropdown != undefined){
				$('.ui.dropdown').dropdown({'forceSelection' : false, 'placeholder' : ''});
				$.G2.boot.autocompleter();
			}
			if(jQuery.fn.checkbox != undefined){
				$('.ui.checkbox').checkbox('refresh');
			}
			if(jQuery.fn.accordion != undefined){
				$('.ui.accordion').accordion();
				$('.ui.accordion').accordion('refresh');
			}
			
			if(jQuery.fn.tooltipster != undefined){
				$('[data-hint]').each(function(i, element){
					$(element).tooltipster({
						content: $(element).data('hint'),
						maxWidth: 300,
						delay: 50,
						debug: false
					});
				});
			}
			
			//G2 actions
			if($.G2.actions != undefined){
				$.G2.actions.ready();
			}
			
			$.G2.boot.calendar();
		});
		$('body').trigger('contentChange');
		
		//toolbar
		$('.ui.toolbar-button[data-url]').on('click', function(e){
			if($(this).attr('data-form')){
				var toolbar_form = $($(this).attr('data-form'));
			}else{
				var toolbar_form = $(this).closest('form');
			}
			
			toolbar_form.attr('action', $(this).data('url'));
			
			if($(this).attr('name')){
				toolbar_form.append($('<input />').attr('type', 'hidden').attr('name', $(this).attr('name')).val(1));
			}
			
			if($(this).data('selections') == '1' && toolbar_form.find('.ui.selector.checkbox.checked').length == 0){
				alert($(this).data('message'));
				return false;
			}
			
			if($(this).attr('data-fn')){
				var fn = $(this).attr('data-fn');
				window[$(this).attr('data-fn')]($(this));
			}else{
				toolbar_form.submit();
			}
		});
		
		//list selectors
		if(jQuery.fn.checkbox != undefined){
			$('.ui.selector.checkbox').checkbox({
				onChecked: function(){
					$(this).closest('tr').addClass('warning');
				},
				onUnchecked: function(){
					$(this).closest('tr').removeClass('warning');
				}
			});
			$('.ui.selector.checkbox').checkbox('attach events', '.ui.select_all.checkbox');
		}
		
		//errors
		$(':input[data-error]').closest('.field').addClass('error');
		
	};
	
}(jQuery));
/*jQuery(document).ready(function($){
	//default modules
	$.G2.boot.ready();
});*/
(function($){
	if($.G2 == undefined){
		$.G2 = {};
	}
	$.G2.forms = {};
	
	$.G2.forms.initializeForm = function (thisForm){
		var validationRules = {};
		
		jQuery.fn.form.settings.rules.required = function(value){
			if(value){
				return true;
			}else{
				return false;
			}
		};
		
		jQuery.fn.form.settings.rules.email = function(value){
			if(value.match(/^([a-zA-Z0-9_\.\-\+%])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{1,11})+$/)){
				return true;
			}else{
				return false;
			}
		};
		
		jQuery.fn.form.settings.rules.minChecked = function(value, minChecked){
			jQuery(this).closest('.fields').find(':input').off('change.validation').on('change.validation', function(){
				thisForm.form('validate form');
			});
			
			if(jQuery(this).closest('.fields').find(':input:checked').length >= minChecked){
				jQuery(this).closest('.fields').removeClass('error');
				return true;
			}else{
				jQuery(this).closest('.fields').addClass('error');
				return false;
			}
		};
		
		jQuery.fn.form.settings.rules.maxChecked = function(value, maxChecked){
			jQuery(this).closest('.fields').find(':input').off('change.validation').on('change.validation', function(){
				thisForm.form('validate form');
			});
			
			if(jQuery(this).closest('.fields').find(':input:checked').length > maxChecked){
				jQuery(this).closest('.fields').addClass('error');
				return false;
			}else{
				jQuery(this).closest('.fields').removeClass('error');
				return true;
			}
		};
		
		jQuery.fn.form.settings.rules.exactChecked = function(value, exactChecked){
			jQuery(this).closest('.fields').find(':input').off('change.validation').on('change.validation', function(){
				thisForm.form('validate form');
			});
			if(jQuery(this).closest('.fields').find(':input:checked').length != exactChecked){
				jQuery(this).closest('.fields').addClass('error');
				return false;
			}else{
				jQuery(this).closest('.fields').removeClass('error');
				return true;
			}
		};
		
		thisForm.find('[data-validationrules]').each(function(i, inp){
			if(jQuery(inp).data('validationrules').disabled == undefined || jQuery(inp).data('validationrules').disabled == 0){
				validationRules['field'+i] = jQuery(inp).data('validationrules');
				
				//jQuery.each(['empty', 'required', 'checked', 'minChecked', 'maxChecked', 'exactChecked'], function(i, r){
				jQuery.each(jQuery(inp).data('validationrules')['rules'], function(i, r){
					//if(jQuery(inp).data('validationrules')['rules'][0]['type'].indexOf(r) >= 0){
					if(jQuery.inArray(r['type'], ['empty', 'required', 'checked', 'minChecked', 'maxChecked', 'exactChecked']) >= 0){
						if(jQuery(inp).parent().hasClass('checkbox')){
							if(jQuery(inp).closest('.fields').length > 0){
								jQuery(inp).closest('.fields').addClass('required');
							}else{
								jQuery(inp).closest('.field').addClass('required');
							}
						}else{
							jQuery(inp).closest('.field').addClass('required');
						}
					}
				});
			}
		});
		
		thisForm.form({
			//inline : true,
			inline : thisForm.data('valloc') ? (thisForm.data('valloc') == 'inline' ? true : false) : true,
			on : 'blur',
			fields: validationRules
		});
	}
	
	$.G2.forms.initializeEvents = function (thisForm){
		thisForm.find('[data-events]').each(function(i, inp){
			//var events = jQuery(inp).data('events');
			var events = JSON.parse(jQuery(inp).attr('data-events'));
			
			jQuery(inp).off('change.events click.events ready.events');
			jQuery.each(events, function(ei, event){
				//jQuery(inp).off('change click ready');
				jQuery(inp).on('change.events click.events ready.events', function($eve){
					
					if(event.hasOwnProperty('identifier') != true || event['identifier'] == '' || event.hasOwnProperty('action') != true || event.action.length == 0){
						return;
					}
					
					var event_condition = false;
					var inp_value = jQuery(inp).data('value') ? jQuery(inp).data('value') : jQuery(inp).val();
					
					if(jQuery(inp).attr('type') == 'checkbox'){
						inp_value = (jQuery(inp).is(':checked') ? inp_value : '');
					}
					if(jQuery(inp).prop('tagName') == 'SELECT'){
						inp_value = jQuery(inp).find(':selected').data('value') ? jQuery(inp).find(':selected').data('value') : jQuery(inp).val();
					}
					
					if(event.hasOwnProperty('value') != true){
						event.value = jQuery(inp).val();
					}
					if(event.hasOwnProperty('group') && event.group == 1){
						inp_value = [];
						jQuery.each(jQuery(inp).closest('.fields').find(':input:checked'), function(kk, checked){
							if(jQuery(checked).data('value')){
								inp_value.push(jQuery(checked).data('value'));
							}else{
								inp_value.push(jQuery(checked).val());
							}
						});
					}
					
					if(jQuery.isArray(inp_value)){
						if(event.sign == '='){
							event_condition = (jQuery.inArray(event.value, inp_value) > -1);
						}else if(event.sign == '!='){
							event_condition = (jQuery.inArray(event.value, inp_value) == -1);
						}else if(event.sign == 'change'){
							if($eve.type != 'ready'){
								event_condition = true;
							}
						}
					}else{
						if(event.sign == '='){
							event_condition = (inp_value == event.value);
						}else if(event.sign == '!='){
							event_condition = (inp_value != event.value);
						}else if(event.sign == 'change'){
							if($eve.type != 'ready'){
								event_condition = true;
							}
						}else if(event.sign == 'click' && $eve.type == 'click'){
							event_condition = true;
						}
					}
					
					if(event['identifier'].substring(0, 1) == '#' || event['identifier'].substring(0, 1) == '.' || event['identifier'].substring(0, 1) == '['){
						var event_target = jQuery(event.identifier);
					}else{
						var event_target = jQuery(':input[name="' + event.identifier + '"]');
					}
					var event_target_one = event_target;
					
					var target_element = event_target.closest('.field');
					if(jQuery.inArray(event_target.prop('tagName'), ['BUTTON', 'DIV']) > -1){
						target_element = event_target;
					}
					if(jQuery.inArray(event_target.prop('type'), ['checkbox', 'radio']) > -1){
						target_element = event_target.closest('.field.fields');
					}
					
					if(event_target.data('ghost')){
						var real_event_target = event_target.closest('.field').find(':checkbox, :radio');
						
						if(real_event_target.length > 0){
							event_target = real_event_target;
							event_target_one = real_event_target.first();
						}
					}
					
					if(jQuery.isArray(event.action) == false){
						event.action = [event.action];
					}
					if(event_condition){
						if(jQuery.inArray('hide', event.action) > -1){
							target_element.hide();
						}
						if(jQuery.inArray('show', event.action) > -1){
							//target_element.show();
							target_element.css('display', '');
							target_element.removeClass('hidden');
						}
						if(jQuery.inArray('disable', event.action) > -1){
							target_element.addClass('disabled');
							event_target.prop('disabled', true);
						}
						if(jQuery.inArray('enable', event.action) > -1){
							target_element.removeClass('disabled');
							event_target.prop('disabled', false);
						}
						if(jQuery.inArray('disable_validation', event.action) > -1){
							if(event_target_one.data('validationrules')){
								var vrules = event_target_one.data('validationrules');
								vrules['disabled'] = 1;
								event_target_one.data('validationrules', vrules);
								
								$.G2.forms.initializeForm(thisForm);
								target_element.removeClass('required error');
								target_element.find('.ui.label.red.pointing.prompt').remove();
							}
						}
						if(jQuery.inArray('enable_validation', event.action) > -1){
							if(event_target_one.data('validationrules')){
								var vrules = event_target_one.data('validationrules');
								vrules['disabled'] = 0;
								event_target_one.data('validationrules', vrules);
								
								$.G2.forms.initializeForm(thisForm);
							}
						}
						if(jQuery.inArray('reload', event.action) > -1){
							if($eve.type != 'ready' && event_target.length > 0){
								target_element.addClass('ui form loading');
								
								$.ajax({
									url: event_target.data('reloadurl'),
									data: jQuery(inp).closest('.form').serialize(),
									success: function(result){
										var newContent = $(result);
										
										target_element.replaceWith(newContent);
										
										$('body').trigger('contentChange');
									}
								});
							}
						}
						if(jQuery.inArray('function', event.action) > -1){
							if($eve.type != 'ready' && window[event.identifier] != undefined){
								window[event.identifier](jQuery(inp));
							}
						}
						//if(jQuery.inArray(event.action, ['add', 'sub', 'multiply', 'set']) > -1){
						if(jQuery(event.action).filter(['add', 'sub', 'multiply', 'set']).length){
							target_element = event_target;
							
							var current_value = parseFloat(target_element.val());
							if(isNaN(current_value)){
								current_value = 0;
							}
							
							if(jQuery.isArray(inp_value)){
								var inp_value_float = 0;
								jQuery.each(inp_value, function(iv, inp_value_v){
									if(!isNaN(parseFloat(inp_value_v))){
										inp_value_float = inp_value_float + parseFloat(inp_value_v);
									}
								});
							}else{
								var inp_value_float = parseFloat(inp_value);
								if(isNaN(inp_value_float)){
									inp_value_float = 0;
									if(event.action == 'multiply'){
										inp_value_float = 1;
									}
								}
							}
							
							var calcList = {};
							var inp_name = jQuery(inp).attr('name');
							
							if(target_element.data('calclist')){
								calcList = target_element.data('calclist');
							}
							
							var prev_inp_value = 0;
							if(calcList.hasOwnProperty(inp_name)){
								prev_inp_value = calcList[inp_name];
							}
							
							calcList[inp_name] = inp_value_float;
							target_element.data('calclist', calcList);
							
							if(jQuery.inArray('add', event.action) > -1){
								var total = current_value + inp_value_float - prev_inp_value;
							}else if(jQuery.inArray('sub', event.action) > -1){
								var total = current_value - inp_value_float + prev_inp_value;
							}else if(jQuery.inArray('multiply', event.action) > -1){
								if(prev_inp_value == 0){
									prev_inp_value = 1;
								}
								var total = (current_value/prev_inp_value) * inp_value_float;
							}else if(jQuery.inArray('set', event.action) > -1){
								var total = inp_value_float;
							}
							
							target_element.val(total);
							
							if(target_element.data('display')){
								jQuery('#'+target_element.data('display')).text(total);
							}
						}
					}
				});
				
				jQuery(inp).trigger('ready.events');
			});
		});
	}
	
	$.G2.forms.initializeFeatures = function (thisForm){
		thisForm.find('.partitioned .ui.button.next, .partitioned .ui.button.forward').off('click');
		thisForm.find('.partitioned .ui.button.next, .partitioned .ui.button.forward').on('click', function(e){
			e.preventDefault();
			var activeTab = jQuery(this).closest('.partitioned').find('.ui.segment.tab.active').first();
			activeTab.find(':input').trigger('blur');
			
			if(activeTab.next('.ui.segment.tab').length > 0 && activeTab.find('.field.error').length == 0){
				activeTab.removeClass('active');
				jQuery('[data-tab="'+activeTab.data('tab')+'"]').removeClass('active');
				activeTab.next('.ui.segment.tab').addClass('active');
				jQuery('[data-tab="'+activeTab.next('.ui.segment.tab').data('tab')+'"]').addClass('active').removeClass('disabled');
			}else{
				
			}
		});
		
		thisForm.find('.partitioned .ui.button.prev, .partitioned .ui.button.backward').off('click');
		thisForm.find('.partitioned .ui.button.prev, .partitioned .ui.button.backward').on('click', function(e){
			e.preventDefault();
			var activeTab = jQuery(this).closest('.partitioned').find('.ui.segment.tab.active').first();
			activeTab.find(':input').trigger('blur');
			
			if(activeTab.prev('.ui.segment.tab').length > 0 && activeTab.find('.field.error').length == 0){
				activeTab.removeClass('active');
				jQuery('[data-tab="'+activeTab.data('tab')+'"]').removeClass('active');
				activeTab.prev('.ui.segment.tab').addClass('active');
				jQuery('[data-tab="'+activeTab.prev('.ui.segment.tab').data('tab')+'"]').addClass('active').removeClass('disabled');
			}else{
				
			}
		});
		
		thisForm.find('.repeater .ui.source-item').hide().find(':input').prop('disabled', true);
		thisForm.find('.repeater .ui.source-item').hide().find(':input').each(function(i, inp){
			if(jQuery(inp).data('validationrules')){
				var vrules = jQuery(inp).data('validationrules');
				vrules['disabled'] = 1;
				jQuery(inp).data('validationrules', vrules);
			}
		});
		
		thisForm.find('.repeater .ui.button.multiply').off('click.repeater');
		thisForm.find('.repeater .ui.button.multiply').on('click.repeater', function(e){
			e.preventDefault();
			
			var cloned = jQuery(this).closest('.repeater').find('.ui.source-item').clone().show();
			cloned.find(':input').prop('disabled', false);
			
			var newHTML = cloned.html().replace(/-N-/g, jQuery(this).closest('.repeater').data('count'));
			if(cloned.data('name')){
				repeaterRegex = new RegExp('#'+cloned.data('name')+'.count', 'gi');
				newHTML = newHTML.replace(repeaterRegex, jQuery(this).closest('.repeater').data('count'));
			}
			
			cloned.html(newHTML);
			jQuery(this).closest('.repeater').data('count', parseInt(jQuery(this).closest('.repeater').data('count')) + 1);
			
			if(jQuery(this).closest('.repeater').data('limit')){
				if(jQuery(this).closest('.repeater').find('.clone-item').length >= parseInt(jQuery(this).closest('.repeater').data('limit'))){
					return;
				}
			}
			jQuery(this).before(cloned.removeClass('source-item').addClass('clone-item'));
			
			jQuery('body').trigger('contentChange');
		});
		
		thisForm.find('.repeater .ui.button.remove').off('click.repeater');
		thisForm.find('.repeater .ui.button.remove').on('click.repeater', function(e){
			e.preventDefault();
			
			jQuery(this).closest('.ui.clone-item').remove();
			
			jQuery('body').trigger('contentChange');
		});
		
		thisForm.find('.modaled > .ui.button.green, .modaled > .ui.button.launch').off('click');
		thisForm.find('.modaled > .ui.button.green, .modaled > .ui.button.launch').on('click', function(e){
			e.preventDefault();
			var theModal = jQuery(this).closest('.modaled').find('.ui.modal').first();
			theModal.modal({detachable : false, closable : (theModal.data('closable') ? true : false)}).modal('show');
		});
		
		thisForm.on('submit', function(e){
			if(thisForm.form('is valid') == false){
				if(thisForm.find('.field.error').first().is(':visible')){
					jQuery.G2.scrollTo(thisForm.find('.field.error').first());
				}else{
					if(thisForm.find('.field.error').first().closest('.partitioned').length > 0){
						var activeTab = thisForm.find('.field.error').first().closest('.partitioned').find('.ui.segment.tab.active').first();
			
						activeTab.removeClass('active');
						jQuery('[data-tab="'+activeTab.data('tab')+'"]').removeClass('active');
						thisForm.find('.field.error').first().closest('.ui.segment.tab').addClass('active');
						jQuery('[data-tab="'+thisForm.find('.field.error').first().closest('.ui.segment.tab').data('tab')+'"]').addClass('active');
						jQuery('[data-tab="'+thisForm.find('.field.error').first().closest('.ui.segment.tab').data('tab')+'"]').removeClass('disabled');
					}
				}
			}else{
				if(thisForm.data('subanimation')){
					thisForm.addClass('loading');
				}
				//thisForm.form('submit');
			}
		});
	}
	
	$.G2.forms.ready = function(){
		jQuery('div[data-invisible="1"]').each(function(i, invForm){
			var content = jQuery(invForm).html();
			var newForm = jQuery('<form>').html(content);
			jQuery.each(jQuery(invForm).get(0).attributes, function(i, att){
				newForm.attr(att.name, att.value);
			});
			jQuery(invForm).replaceWith(newForm);
			jQuery('body').trigger('contentChange');
		});
		
		jQuery('.G2-form').each(function(fk, Form){
			var thisForm = jQuery(Form);
			jQuery.G2.forms.initializeFeatures(thisForm);
			
			jQuery.G2.forms.initializeEvents(thisForm);
			//fields_initialize_duplicators(thisForm);
			jQuery.G2.forms.initializeForm(thisForm);
			//masks
			if(jQuery.fn.inputmask != undefined){
				thisForm.find(':input').inputmask();
			}
			//$('body').trigger('contentChange');
			if($.G2.actions != undefined){
				jQuery.G2.actions.list[thisForm.data('id')] = {
					'beforeStart' : function(element){
						if(element.form('is valid') != true){
							return false;
						}
					}
				};
			}
		});
	}
	
}(jQuery));
/*jQuery(document).ready(function($){
	$.G2.forms.ready();
	
	$('body').on('contentChange', function(){
		if($.G2.hasOwnProperty('forms')){
			$.G2.forms.ready();
		}
	});
});*/
(function($){
	if($.G2 == undefined){
		$.G2 = {};
	}
	
	$.G2.actions = {};
	$.G2.actions.list = {};
	
	$.G2.actions.include = function(items){
		$.each(items, function(k, item){
			$.G2.actions.list[k] = item;
		});
	};
	
	$.G2.actions.ready = function(Elem){
		if(typeof Elem == 'undefined'){
			Elem = $('body');
		}
		
		Elem.find('.G2-static').each(function(k, element){
			$.G2.actions.statics(element);
		});
		
		Elem.find('.G2-dynamic').each(function(k, element){
			$.G2.actions.dynamics(element);
		});
		
	};
	
	$.G2.actions.statics = function(element){
		var id = $(element).data('id');
		
		$(element).off('click.static');
		$(element).on('click.static', function(e){
			e.preventDefault();
			if($.G2.actions.list.hasOwnProperty(id) && $.G2.actions.list[id].hasOwnProperty('click')){
				var result = $.G2.actions.list[id].click($(element), e);
				if(result == false){
					return ret;
				}
			}
		});
		
		if($(element).data('task')){
			
			var targets = $.G2.actions.getTarget(element, $(element).data('task'));
			target_element = targets[1];
			element_task = targets[0];
			$(element).data('target', target_element);
			
			if(element_task == 'popup'){
				
				popup_element = target_element;
				
				if(popup_element == null){
					$(element).after($('<div class="ui fluid popup top left transition hidden G2-static-popup"><div class="ui active inline centered loader"></div></div>'));
					popup_element = $(element).next('.popup').first();
				}
				
				if(popup_element != null){
					$(element).popup({
						//inline: true, 
						position: (typeof popup_element.data('position') == 'undefined') ? 'top right' : popup_element.data('position'),
						popup: popup_element,
						on : 'click',
						closable: true,
						onHidden: function(){
							//$('body').off('click.staticpopup');
						},
						onVisible: function(){
							$('body').on('click.staticpopup', function(_e){
								if(_e.target !== $(element).next('.popup')[0] && !$.contains($(element).next('.popup')[0], _e.target)){
									if($(element).next('.popup').hasClass('visible')){
										$(element).popup('show');
										$(element).popup('hide');
									}
								}
							});
						}
					});
					/*$(element).on('click', function(){
						$(element).popup('show');
					});*/
				}
				
			}else if(element_task == 'scroll'){
				
				$(element).off('click').on('click', function(e){
					e.preventDefault();
					target_element = $(element).data('target');
					
					if(target_element != null){
						$.G2.scrollTo(target_element);
					}
				});
			}else if(element_task == 'hide'){
				
				$(element).off('click').on('click', function(e){
					e.preventDefault();
					target_element = $(element).data('target');
					
					target_element.removeClass('visible').addClass('hidden');
				});
			}else if(element_task == 'remove'){
				
				$(element).off('click').on('click', function(e){
					e.preventDefault();
					target_element = $(element).data('target');
					
					target_element.remove();
					$('body').trigger('contentChange');
				});
			}else if(element_task == 'clone'){
				
				$(element).off('click').on('click', function(e){
					e.preventDefault();
					target_element = $(element).data('target');
					
					var clone = target_element.clone();
					var counter = target_element.data('counter') ? parseInt(target_element.data('counter')) : 0;
					counter = counter + 1;
					target_element.data('counter', counter);
					
					clone.html(clone.html().replace(/\[0\]/g, '[' + counter + ']').replace(/-0/g, counter));
					target_element.after(clone);
					
					$('body').trigger('contentChange');
				});
			}
		}
	};
	
	$.G2.actions.getTarget = function(element, string){
		
		var task_data = string.split(':');
		var task_data1 = task_data[0].split('/');
		
		if(task_data.length > 1){
			var task_data2 = task_data[1].split('/');
		}else{
			var task_data2 = '';
		}
		
		var target_element = null;
		
		if(task_data1[1] == 'self'){
			
			target_element = $(element);
		
		}else if(task_data1[1] == 'next' || (task_data1[1] == undefined && task_data2[0] == undefined)){
			
			target_element = $(element).next();
			
		}else if(task_data1[1] == 'closest' && task_data2[0] != undefined){
			
			target_element = $(element).closest(task_data2[0]);
			
		}else if(task_data1[1] == 'child'){
			
		}else if((task_data1[1] == 'find' || task_data1[1] == undefined) && task_data2[0] != undefined){
			
			target_element = $(task_data2[0]);
			
		}else if(task_data1[1] == undefined && task_data2[0] == undefined){
			
		}
		
		return [task_data1[0], target_element];
	};
	
	$.G2.actions.dynamics = function(element){
		var id = $(element).data('id');
		
		var Event = 'click'; 
		if($(element).prop('tagName') == 'FORM'){
			Event = 'submit';
			$(element).data('url', $(element).attr('action'));
		}
		
		if($(element).data('url') == undefined && $(element).attr('href')){
			$(element).data('url', $(element).attr('href'));
		}
		/*
		if($(element).is('.ui.dropdown')){
			$(element).data('url', $(element).find('select').first().data('url'));
		}
		*/
		$(element).off(Event + '.dynamic');
		$(element).on(Event + '.dynamic', function(e){
			
			e.preventDefault();
			
			$.G2.actions.dynamics.run(element);
		});
	};
	
	$.G2.actions.dynamics.run = function(element){
		var id = $(element).data('id');
		
		var counter = $(element).data('counter') ? parseInt($(element).data('counter')) : 0;
		counter = counter + 1;
		$(element).data('counter', counter);
		
		var counterParam = $(element).attr('name') ? '&' + $(element).attr('name') + '[counter]=' + counter : '';
		counterParam = counterParam + '&_counter=' + counter;
		
		if($(element).data('once') && $(element).data('called')){
			return false;
		}
		
		if($.G2.actions.list.hasOwnProperty(id) && $.G2.actions.list[id].hasOwnProperty('beforeStart')){
			var result = $.G2.actions.list[id].beforeStart($(element));
			if(result == false){
				return result;
			}
		}
		
		if($(element).data('url')){
			var requestData = {};
			var content = false;//'application/x-www-form-urlencoded; charset=UTF-8';
			var container = '';
			var buildData = false;
			//counter = counter + 1;
			
			if($(element).data('dtask')){
				
				var targets = $.G2.actions.getTarget(element, $(element).data('dtask'));
				target_element = targets[1];
				element_task = targets[0];
				
				if(element_task == 'send'){
					
					if(target_element != null){
						buildData = true;
						container = target_element;
					}
					
				}
			}
			
			if(buildData){
				//add text data
				requestData = new FormData();
				$.each(container.find(':input').serializeArray(), function(key, input){
					requestData.append(input.name, input.value);
				});
				//add files data
				container.find('input[type="file"]').each(function(key, input){
					requestData.append($(input).attr('name'), $(input)[0].files[0]);
				});
			}
			
			$.ajax({
				xhr: function(){
					var xhr = new window.XMLHttpRequest();
					
					if(container && jQuery.fn.progress != undefined){
						//container.find('.progress').show();
						xhr.upload.addEventListener('progress', function(evt){
							if(evt.lengthComputable){
								var percentComplete = evt.loaded / evt.total;
								percentComplete = parseInt(percentComplete * 100);
								
								container.find('.progress').progress('set percent', percentComplete);
								
								if(percentComplete === 100){
									//container.find('.progress').hide();
								}
							}
						}, false);
					}
					return xhr;
				},
				url: $(element).data('url') + counterParam,
				type: "POST",
				data: requestData,
				processData: false,
				contentType: content,
				beforeSend: function(){
					$(element).addClass('loading');
					if(container && container.hasClass('loading') == false){
						container.append('<div class="ui active inverted dimmer"><div class="ui text loader"></div></div>');
					}
				},
				success: function(data, textStatus, xhr){
					$(element).removeClass('loading');
					//$(element).popup('destroy');
					
					if(container){
						container.find('.ui.dimmer').remove();
					}
					var is_json = false;
					//check response data type
					if(data.substring(0, 1) == '{' && data.slice(-1) == '}'){
						var is_json = true;
						
						var json = JSON.parse(data);
						
						if(json.hasOwnProperty('error') && json.error != 0){
							if(jQuery.fn.popup != undefined){
								$(element).popup({html : '<div class="ui message error small">'+json.error+'</div>'});
								$(element).popup('show');
							}else{
								alert(json.error);
							}
						}else{
							json.error = 0;
						}
						
						data = json;
					}
					
					var newContent = '';
					
					if($(element).data('result') && (is_json == false || (is_json == true && data.error == 0))){
						
						if(is_json == false){
							var newContent = $(data);
						}
						
						var targets = $.G2.actions.getTarget(element, $(element).data('result'));
						target_element = targets[1];
						element_task = targets[0];
						
						if(element_task == 'replace'){
							
							if(target_element != null){
								target_element.replaceWith(newContent);
							}
						}else if(element_task == 'after'){
							
							if(target_element != null){
								target_element.after(newContent);
							}
						}else if(element_task == 'before'){
							
							if(target_element != null){
								target_element.before(newContent);
							}
						}else if(element_task == 'html'){
							
							if(target_element != null){
								target_element.html(newContent);
							}
						}else if(element_task == 'text'){
							
							if(target_element != null){
								target_element.text(data);
							}
						}else if(element_task == 'append'){
							
							if(target_element != null){
								target_element.append(newContent);
							}
						}else if(element_task == 'prepend'){
							
							if(target_element != null){
								target_element.prepend(newContent);
							}
						}else if(element_task == 'remove'){
							
							if(target_element != null){
								if(target_element.prop('tagName') == 'TR'){
									target_element.remove();
								}else{
									target_element.transition({
										'animation' : 'fly right', 
										'onComplete' : function(){
											target_element.remove();
										}
									});
								}
							}
						}
						
					}
					
					//process click events for the element
					if($.G2.actions.list.hasOwnProperty(id) && $.G2.actions.list[id].hasOwnProperty('success')){
						$.G2.actions.list[id].success($(element), data, is_json, newContent);
					}
					//check triggers
					if($(element).data('triggers')){
						$.each($(element).data('triggers'), function(k, trig){
							//console.log(trig);
						});
					}
					
					//set called status
					if($(element).data('once')){
						$(element).data('called', true);
					}
					
					if(is_json == false){
						$('body').trigger('contentChange');
					}
					
				}
			});
		}
	};
	
}(jQuery));