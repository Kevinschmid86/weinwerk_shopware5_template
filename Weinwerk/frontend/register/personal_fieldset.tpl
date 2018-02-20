{extends file="parent:frontend/register/personal_fieldset.tpl"}

{* Firstname *}
{block name='frontend_register_personal_fieldset_input_firstname'}
    <div class="register--firstname">
        <label class="register--label" for="register_personal_firstname">
            {s name='RegisterPlaceholderFirstname'}{/s}{s name="labelInfo" namespace="frontend/register/index"}{/s}
        </label>
        <input autocomplete="section-personal given-name"
               name="register[personal][firstname]"
               type="text"
               required="required"
               aria-required="true"
               placeholder="{s name='RegisterPlaceholderFirstname'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
               id="firstname"
               value="{$form_data.firstname|escape}"
               class="register--field is--required{if isset($error_flags.firstname)} has--error{/if}" />
    </div>
{/block}

{* Lastname *}
{block name='frontend_register_personal_fieldset_input_lastname'}
    <div class="register--lastname">
        <label class="register--label" for="register_personal_lastname">
            {s name='RegisterPlaceholderLastname'}{/s}{s name="labelInfo" namespace="frontend/register/index"}{/s}
        </label>
        <input autocomplete="section-personal family-name"
               name="register[personal][lastname]"
               type="text"
               required="required"
               aria-required="true"
               placeholder="{s name='RegisterPlaceholderLastname'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
               id="lastname" value="{$form_data.lastname|escape}"
               class="register--field is--required{if isset($error_flags.lastname)} has--error{/if}" />
    </div>
{/block}

{* Checkbox Konto anlegen, fest anhaken*}
{block name='frontend_register_personal_fieldset_skip_login'}
    {if ($showNoAccount || $form_data.accountmode) && !$sEsd && !$form_data.sValidation && !{config name=NoAccountDisable}}
        <div class="register--check">
            <input type="checkbox"
                   value="0"
                   id="register_personal_skipLogin"
                   name="register[personal][accountmode]"
                   class="register--checkbox chkbox" checked="checked" />

            <label for="register_personal_skipLogin" class="chklabel is--bold">{s name='RegisterLabelNoAccount'}{/s}</label>
        </div>
    {else}
        <input type="hidden"
               value="0"
               id="register_personal_skipLogin"
               name="register[personal][accountmode]"
               class="register--checkbox chkbox" {if $form_data.accountmode || $accountmode}checked="checked" {/if}/>
    {/if}
{/block}



{* E-Mail *}
{block name='frontend_register_personal_fieldset_input_mail'}
    <div class="register--email">
        <label class="register--label" for="register_personal_email">
            {s name='RegisterPlaceholderMail'}{/s}{s name="labelInfo" namespace="frontend/register/index"}{/s}
        </label>
        <input autocomplete="section-personal email"
               name="register[personal][email]"
               type="email"
               required="required"
               aria-required="true"
               placeholder="{s name='RegisterPlaceholderMail'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
               id="register_personal_email"
               value="{$form_data.email|escape}"
               class="register--field email is--required{if isset($error_flags.email)} has--error{/if}" />
    </div>

    {if {config name=doubleEmailValidation}}
        <div class="register--emailconfirm">
            <label class="register--label" for="register_personal_emailConfirmation">
                {s name='RegisterPlaceholderMailConfirmation'}{/s}{s name="labelInfo" namespace="frontend/register/index"}{/s}
            </label>
            <input autocomplete="section-personal email"
                   name="register[personal][emailConfirmation]"
                   type="email"
                   required="required"
                   aria-required="true"
                   placeholder="{s name='RegisterPlaceholderMailConfirmation'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                   id="register_personal_emailConfirmation"
                   value="{$form_data.emailConfirmation|escape}"
                   class="register--field emailConfirmation is--required{if isset($error_flags.emailConfirmation)} has--error{/if}" />
        </div>
    {/if}
{/block}

{* Password *}
{block name='frontend_register_personal_fieldset_input_password'}
    <div class="register--password">
        <label class="register--label" for="register_personal_password">
            {s name='RegisterPlaceholderPassword'}{/s}{s name="labelInfo" namespace="frontend/register/index"}{/s}
        </label>
        <input name="register[personal][password]"
               type="password"
               required="required"
               aria-required="true"
               placeholder="{s name='RegisterPlaceholderPassword'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
               id="register_personal_password"
               class="register--field password is--required{if isset($error_flags.password)} has--error{/if}" />
    </div>
{/block}

{* Phone *}
{block name='frontend_register_personal_fieldset_input_phone'}
    {if {config name=showPhoneNumberField}}
        <label class="register--label" for="register_personal_password">
            {s name='RegisterPlaceholderPhone'}{/s}{s name="labelInfo" namespace="frontend/register/index"}{/s}
        </label>
        <div class="register--phone">
            <input autocomplete="section-personal tel"
                   name="register[personal][phone]"
                   type="tel"{if {config name=requirePhoneField}} required="required" aria-required="true"{/if}
                   placeholder="{s name='RegisterPlaceholderPhone'}{/s}{if {config name=requirePhoneField}}{s name="RequiredField" namespace="frontend/register/index"}{/s}{/if}"
                   id="phone"
                   value="{$form_data.phone|escape}"
                   class="register--field{if {config name=requirePhoneField}} is--required{/if}{if isset($error_flags.phone) && {config name=requirePhoneField}} has--error{/if}" />
        </div>
    {/if}
{/block}