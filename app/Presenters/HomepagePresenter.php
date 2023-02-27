<?php

declare(strict_types=1);

namespace App\Presenters;

use Nette;
use Nette\Application\UI\Form;
use Nette\Application\UI\Presenter;
use Nette\Database\Explorer;


final class HomepagePresenter extends Presenter
{
	public function __construct(private Explorer $database) {}

	public function renderDefault(): void
	{
		$this->template->brands = $this->database
			->table('brands');
	}
}

