{{flutter_js}}
{{flutter_build_config}}

(() => {
  const loader = document.getElementById('app-loader');
  const loaderStatus = document.getElementById('app-loader-status');
  const language = navigator.language.toLowerCase();
  const loaderCopy = language.startsWith('zh')
    ? {
        starting: '正在启动界面…',
        preparing: '正在准备架构工作台…',
        failed: '启动失败，请刷新页面重试。',
      }
    : language.startsWith('ja')
      ? {
          starting: '画面を起動しています…',
          preparing: 'ワークスペースを準備しています…',
          failed: '起動できませんでした。ページを再読み込みしてください。',
        }
      : {
          starting: 'Starting the interface…',
          preparing: 'Preparing your workspace…',
          failed: 'Unable to start. Refresh to try again.',
        };

  function updateLoader(message) {
    if (loaderStatus) {
      loaderStatus.textContent = message;
    }
  }

  function finishLoading() {
    if (!loader || loader.classList.contains('is-complete')) {
      return;
    }
    loader.setAttribute('aria-busy', 'false');
    loader.classList.add('is-complete');
    window.setTimeout(() => loader.remove(), 320);
  }

  window.__flutterArchitectReady = finishLoading;

  _flutter.loader.load({
    onEntrypointLoaded: async function (engineInitializer) {
      try {
        updateLoader(loaderCopy.starting);
        const appRunner = await engineInitializer.initializeEngine();
        updateLoader(loaderCopy.preparing);
        await appRunner.runApp();
      } catch (error) {
        updateLoader(loaderCopy.failed);
        throw error;
      }
    },
  });
})();
