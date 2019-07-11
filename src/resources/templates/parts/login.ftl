<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group">
            <label class="col-sm-2 col-form-label"> User Name : </label>
            <div class="col-sm-6">
                <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       placeholder="User name"/>
                <#if usernameError??>
                    <div class="invalide-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 col-form-label"> Password: </label>
            <div class="col-sm-6">
                <input type="password" name="password"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}
                       placeholder="Password"/>
                <#if passwordError??>
                    <div class="invalide-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group">
                <label class="col-sm-2 col-form-label"> Password: </label>
                <div class="col-sm-6">
                    <input type="password" name="password2"
                           class="form-control ${(password2Error??)?string('is-invalid', '')}
                       placeholder="Repeat Password"/>
                    <#if password2Error??>
                        <div class="invalide-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 col-form-label"> Email: </label>
                <div class="col-sm-6">
                    <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                           class="form-control ${(emailError??)?string('is-invalid', '')}"
                           placeholder="name@mail"/>
                    <#if emailError??>
                        <div class="invalide-feedback">
                            ${emailError}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="g-recaptcha " data-sitekey="6LcbKK0UAAAAAKjSTa0uY4S6OLByUOIk2FQmBb-F"></div>
                <#if captchaError??>
                    <div class="alert alert-${messageType}" role="alert">
                        ${captchaError}
                    </div>
                </#if>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if !isRegisterForm><a href="/registration">Add new User</a></#if>
        <button class="btn btn-primary" type="submit"><#if isRegisterForm>Create<#else >Sign in </#if></button>
    </form>
</#macro>

<#macro logout >
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit">Sign out</button>
    </form>
</#macro>