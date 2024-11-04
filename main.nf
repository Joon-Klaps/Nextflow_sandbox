nextflow.preview.output = true
workflow {
    main:
    ch_fastq = Channel.of(
        [ [id: 1, name: 'sample 1'], '1a.fastq', '1b.fastq' ],
        [ [id: 2, name: 'sample 2'], '2a.fastq', '2b.fastq' ],
        [ [id: 3, name: 'sample 3'], '3a.fastq', '3b.fastq' ]
    )

    publish:
    ch_fastq >> 'fastq'

}

output {
    'fastq' {
        index {
            path 'index.csv'
        }
    }
}

// process TASK {
//     input:
//     val num

//     script:
//     """
//     """

//     output:
//     stdout
// }