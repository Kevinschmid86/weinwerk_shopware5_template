<?php

namespace Shopware\Themes\Weinwerk;

use Shopware\Components\Form as Form;

class Theme extends \Shopware\Components\Theme
{
    protected $extend = 'Responsive';

    protected $name = <<<'SHOPWARE_EOD'
Weinwerk Custom Theme
SHOPWARE_EOD;

    protected $description = <<<'SHOPWARE_EOD'
Weinwerk Custom Theme
SHOPWARE_EOD;

    protected $author = <<<'SHOPWARE_EOD'
Kevin Schmid
SHOPWARE_EOD;

    protected $license = <<<'SHOPWARE_EOD'

SHOPWARE_EOD;

    public function createConfig(Form\Container\TabContainer $container)
    {
    }

    protected $javascript = array(
      'src/js/custom-weinwerk.js'
    );
}