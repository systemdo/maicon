<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa user o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações
// com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'maicon');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'maicon');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', 'maicon');

/** Nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Charset do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8mb4');

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para desvalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'OU6V*,C&;@nY;18.bI}4j%Y,*b<+L]71z>4itCzPU|bPigJbcSdDnquh:8qLhCq8');
define('SECURE_AUTH_KEY',  'CcuFzgdM<!ydSLN/ [Z%3t-K?x/1:|<k6O:D34m0R:0CyRbeRf?!%qbK<Qb&UZD@');
define('LOGGED_IN_KEY',    '4SVZT_0MX~1]U@#yF26t&Td{Ww8*n3/Swfv{k[gCc>1SX8WZ,z7n1^IuVt~m6=*U');
define('NONCE_KEY',        'xTSfU{T5tRYE4C B]LH!JRHM/X}IKa31fvnS |>rL>j.:G]w_qFlKN~uafH?:6nL');
define('AUTH_SALT',        'Vu>SpBb7zI`%2~As4(n> Iho%i3ycQAJj=lFQ?pQCe$VHBT+d+WfaAg]J}LdIR~]');
define('SECURE_AUTH_SALT', 'S<*9`FqO12.1-$Cr6fI:s[,M*GkXSo5&Lo]?3m%L=$E7we``Yl_5`k,aOy+}7~V7');
define('LOGGED_IN_SALT',   '6 BOyc(tLuH.uQ{>jWi<@0k?8%aV^EMp~>A43ak%;E();Q$(J<R$J!^EBsX-_4C!');
define('NONCE_SALT',       'yE_v<Gm6a@=4bOzC}Wy{|$7!]IE_Blmh!{2QoF]RX_nw0e+,E_TL1$7969wf}H]}');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * para cada um um único prefixo. Somente números, letras e sublinhados!
 */
$table_prefix  = 'ma';

/**
 * Para desenvolvedores: Modo debugging WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
