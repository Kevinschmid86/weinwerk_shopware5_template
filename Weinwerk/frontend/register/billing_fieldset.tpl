{extends file="parent:frontend/register/billing_fieldset.tpl"}

{* Street *}
{block name='frontend_register_billing_fieldset_input_street'}
    <div class="register--street">
        <label class="register--label" for="register_billing_street">
            {s name='RegisterBillingPlaceholderStreet'}{/s}{s name="labelInfo" namespace="frontend/register/index"}{/s}
        </label>
        <input autocomplete="section-billing billing street-address"
               name="register[billing][street]"
               type="text"
               required="required"
               aria-required="true"
               placeholder="{s name='RegisterBillingPlaceholderStreet'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
               id="street"
               value="{$form_data.street|escape}"
               class="register--field register--field-street is--required{if isset($error_flags.street)} has--error{/if}" />
    </div>
{/block}

{* Zip + City *}
{block name='frontend_register_billing_fieldset_input_zip_and_city'}
    <div class="register--zip-city">
        <label class="register--label">
            {s name='RegisterBillingPlaceholderZipcode'}{/s} / {s name='RegisterBillingPlaceholderCity'}{/s} {s name="labelInfo" namespace="frontend/register/index"}{/s}
        </label>
        {if {config name=showZipBeforeCity}}
            <input autocomplete="section-billing billing postal-code"
                   name="register[billing][zipcode]"
                   type="text"
                   required="required"
                   aria-required="true"
                   placeholder="{s name='RegisterBillingPlaceholderZipcode'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                   id="zipcode"
                   value="{$form_data.zipcode|escape}"
                   class="register--field register--spacer register--field-zipcode is--required{if isset($error_flags.zipcode)} has--error{/if}" />

            <input autocomplete="section-billing billing address-level2"
                   name="register[billing][city]"
                   type="text"
                   required="required"
                   aria-required="true"
                   placeholder="{s name='RegisterBillingPlaceholderCity'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                   id="city"
                   value="{$form_data.city|escape}"
                   size="25"
                   class="register--field register--field-city is--required{if isset($error_flags.city)} has--error{/if}" />
        {else}
            <input autocomplete="section-billing billing address-level2"
                   name="register[billing][city]"
                   type="text"
                   required="required"
                   aria-required="true"
                   placeholder="{s name='RegisterBillingPlaceholderCity'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                   id="city"
                   value="{$form_data.city|escape}"
                   size="25"
                   class="register--field register--spacer register--field-city is--required{if isset($error_flags.city)} has--error{/if}" />

            <input autocomplete="section-billing billing postal-code"
                   name="register[billing][zipcode]"
                   type="text"
                   required="required"
                   aria-required="true"
                   placeholder="{s name='RegisterBillingPlaceholderZipcode'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}"
                   id="zipcode"
                   value="{$form_data.zipcode|escape}"
                   class="register--field register--field-zipcode is--required{if isset($error_flags.zipcode)} has--error{/if}" />
        {/if}
    </div>
{/block}