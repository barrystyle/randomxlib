#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include <RandomX/src/randomx.h>
#include <rxmonero/hash-ops.h>

#include <util/uint256.h>
#include <util/strencodings.h>

//! small randomx testbed with bitcoin types
//! and monero hashing methods / baz 27052020

int main()
{
        //! full zero hash
        int height = 0;
        unsigned int miners = 1;
        const int blockhdrlen = 144;
	unsigned char blockheader[blockhdrlen] = {0};
        uint256 blockHash = uint256();
	uint256 seedHash = uint256();

        //! call monero routines
        rx_slow_hash(height, 0, (const char*)&seedHash, (char *)blockheader, blockhdrlen, (char *)&blockHash, miners, 0);

        //! print hash
        printf("stored hash c3ab750a622be3ce797403d349edb7f9785097cc3eb423feb4290fc47f0da00e\n");
        printf("output hash %s\n", blockHash.ToString().c_str());

	return 0;
}
