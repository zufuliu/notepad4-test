https://github.com/zufuliu/notepad4/issues/801
test backtrack for `LineStateBlockEndLine`, put caret before `## title2`, press Enter/Backspace.

https://github.com/zufuliu/notepad4/issues/1243
exponential time for nested emphasis.

https://github.com/zufuliu/notepad4/issues/1257
crash for emphasis，add following code into `LexerBase::Lex()`:

	if (lexer.GetLanguage() == SCLEX_MARKDOWN && styler.Length() == 3251) {
		startPos = pAccess->LineStart(13);
		lengthDoc = styler.Length() - startPos;
		lexer.fnLexer(0, startPos, 0, keywordLists, styler);
		initStyle = pAccess->StyleAt(startPos - 1);
	}

put caret before `->CsrCapture`, press Enter/Backspace.

https://github.com/zufuliu/notepad4/issues/1260
crash for emphasis, put caret at table end, press Enter/Backspace.
