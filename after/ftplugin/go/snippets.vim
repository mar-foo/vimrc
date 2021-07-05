iabbrev <buffer>bsc SCANNER = bufio.Scanner()
            \<CR>for SCANNER.Scan() {
                \<CR>
                \<CR>}

iabbrev <buffer>errf if err!= nil {
                \<CR>fmt.Println(err)
                \<CR>os.Exit(1)
                \<CR>}

iabbrev <buffer>errl if err != nil {
                \<CR>log\.Fatalln(err)
                \<CR>}

iabbrev <buffer>ff fmt.Printf("

iabbrev <buffer>fn fmt.Println("

iabbrev <buffer>func // FUNC(PARAMS) 
            \<CR>func FUNC(PARAMS) RETURN {
                \<CR>
                \<CR>}

iabbrev <buffer>main func main() {
                \<CR><++>
                \<CR>}

