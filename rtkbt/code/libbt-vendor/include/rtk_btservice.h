#ifndef RTK_BTSERVICE_H
#define RTK_BTSERVICE_H

#include <stdio.h>
#include <cutils/log.h>

#define HCI_RTKBT_AUTOPAIR_EVT                               0x30

#define STREAM_TO_UINT8(u8, p) \
      {                            \
              (u8) = (uint8_t)(*(p));    \
              (p) += 1;                  \
            }


#endif


