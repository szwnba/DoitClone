.class public Lim/doit/pro/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCurrentDateHour(Ljava/util/Calendar;IZ)V
    .locals 7
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "delayHour"    # I
    .param p2, "isClearMinute"    # Z

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 302
    .local v0, "temp":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 303
    invoke-virtual {v0, v5, p1}, Ljava/util/Calendar;->add(II)V

    .line 304
    invoke-static {v0, p0}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    if-lez v1, :cond_1

    .line 305
    const/16 v1, 0x17

    invoke-virtual {p0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 306
    const/16 v1, 0x3b

    invoke-virtual {p0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 313
    :goto_0
    if-eqz p2, :cond_0

    .line 314
    invoke-virtual {p0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 315
    :cond_0
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 316
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 317
    return-void

    .line 307
    :cond_1
    invoke-static {v0, p0}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    if-gez v1, :cond_2

    .line 308
    invoke-virtual {p0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 309
    invoke-virtual {p0, v6, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {p0, v5, p1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method public static after(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "comparedDate"    # Ljava/util/Calendar;
    .param p2, "allDay"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 196
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    .line 205
    :cond_1
    :goto_0
    return v0

    .line 199
    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p0, p1}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 202
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gtz v2, :cond_1

    :cond_4
    move v0, v1

    .line 205
    goto :goto_0
.end method

.method public static afterOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "comparedDate"    # Ljava/util/Calendar;
    .param p2, "allDay"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 210
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    .line 219
    :cond_1
    :goto_0
    return v0

    .line 213
    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p0, p1}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    if-gez v2, :cond_1

    .line 216
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gez v2, :cond_1

    :cond_4
    move v0, v1

    .line 219
    goto :goto_0
.end method

.method public static before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "comparedDate"    # Ljava/util/Calendar;
    .param p2, "allDay"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    .line 177
    :cond_1
    :goto_0
    return v0

    .line 171
    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p0, p1}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 174
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-ltz v2, :cond_1

    :cond_4
    move v0, v1

    .line 177
    goto :goto_0
.end method

.method public static beforeOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "comparedDate"    # Ljava/util/Calendar;
    .param p2, "allDay"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v1

    .line 191
    :cond_1
    :goto_0
    return v0

    .line 185
    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p0, p1}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    if-lez v2, :cond_1

    .line 188
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-lez v2, :cond_1

    :cond_4
    move v0, v1

    .line 191
    goto :goto_0
.end method

.method public static between(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Z)Z
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "minDate"    # Ljava/util/Calendar;
    .param p2, "maxDate"    # Ljava/util/Calendar;
    .param p3, "allDay"    # Z

    .prologue
    const/4 v0, 0x0

    .line 224
    if-eqz p1, :cond_1

    invoke-static {p0, p1, p3}, Lim/doit/pro/utils/DateUtils;->before(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p0, p2, p3}, Lim/doit/pro/utils/DateUtils;->after(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static changeTimeForDownload(J)J
    .locals 6
    .param p0, "time"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 598
    cmp-long v4, p0, v2

    if-nez v4, :cond_1

    move-wide p0, v2

    .line 607
    .end local p0    # "time":J
    .local v0, "cal":Ljava/util/Calendar;
    .local v1, "timeZone":Ljava/util/TimeZone;
    :cond_0
    :goto_0
    return-wide p0

    .line 601
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "timeZone":Ljava/util/TimeZone;
    .restart local p0    # "time":J
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 602
    .restart local v0    # "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 603
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 604
    .restart local v1    # "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr p0, v2

    goto :goto_0
.end method

.method public static changeTimeForUpload(J)J
    .locals 6
    .param p0, "time"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 585
    cmp-long v4, p0, v2

    if-nez v4, :cond_1

    move-wide p0, v2

    .line 594
    .end local p0    # "time":J
    .local v0, "cal":Ljava/util/Calendar;
    .local v1, "timeZone":Ljava/util/TimeZone;
    :cond_0
    :goto_0
    return-wide p0

    .line 588
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "timeZone":Ljava/util/TimeZone;
    .restart local p0    # "time":J
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 589
    .restart local v0    # "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 590
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 591
    .restart local v1    # "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr p0, v2

    goto :goto_0
.end method

.method public static checkTimeIntervalAboveDay(J)Z
    .locals 4
    .param p0, "lastUpdated"    # J

    .prologue
    .line 622
    const-wide/32 v0, 0x5265c00

    add-long/2addr v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clearHourAndMinuteAndSecondAndMillisecond(Ljava/util/Calendar;)V
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    .line 141
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 142
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 143
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 144
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 145
    return-void
.end method

.method public static convertToDate(J)Ljava/util/Calendar;
    .locals 4
    .param p0, "millis"    # J

    .prologue
    .line 320
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 324
    :goto_0
    return-object v0

    .line 322
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 323
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static convertToLong(Ljava/util/Calendar;)J
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    .line 328
    if-nez p0, :cond_0

    .line 329
    const-wide/16 v0, 0x0

    .line 331
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 4
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    .line 667
    if-nez p0, :cond_0

    .line 668
    const/4 v0, 0x0

    .line 672
    :goto_0
    return-object v0

    .line 670
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 671
    .local v0, "temp":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 8
    .param p0, "date1"    # Ljava/util/Calendar;
    .param p1, "date2"    # Ljava/util/Calendar;

    .prologue
    .line 234
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 235
    :cond_0
    const/4 v4, 0x0

    .line 251
    :goto_0
    return v4

    .line 237
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 238
    .local v2, "temp1":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 239
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "dst1":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    .line 244
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 245
    .local v3, "temp2":Ljava/util/Calendar;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 246
    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "dst2":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 249
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    .line 251
    :cond_3
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-int v6, v0, v1

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v4, v4

    goto :goto_0
.end method

.method public static diffHour(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 3
    .param p0, "date1"    # Ljava/util/Calendar;
    .param p1, "date2"    # Ljava/util/Calendar;

    .prologue
    const/16 v2, 0xb

    .line 281
    invoke-static {p0, p1}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    mul-int/lit8 v0, v1, 0x18

    .line 282
    .local v0, "diff":I
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 283
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 284
    return v0
.end method

.method public static diffMinute(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 6
    .param p0, "date1"    # Ljava/util/Calendar;
    .param p1, "date2"    # Ljava/util/Calendar;

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 289
    .local v0, "diff":J
    const-wide/32 v2, 0xea60

    div-long v2, v0, v2

    long-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method public static diffMonth(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 3
    .param p0, "date1"    # Ljava/util/Calendar;
    .param p1, "date2"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 272
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    .line 273
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 272
    add-int/2addr v0, v1

    .line 273
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 272
    sub-int/2addr v0, v1

    return v0
.end method

.method public static diffWeek(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 6
    .param p0, "date1"    # Ljava/util/Calendar;
    .param p1, "date2"    # Ljava/util/Calendar;

    .prologue
    const/4 v5, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 262
    invoke-static {p0, p1}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    div-int/lit8 v0, v2, 0x7

    .line 263
    .local v0, "diffWeek":I
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDayOfWeekStart()I

    move-result v1

    .line 264
    .local v1, "doitStartOfWeek":I
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-gt v2, v1, :cond_1

    move v2, v3

    .line 265
    :goto_0
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-gt v5, v1, :cond_2

    :goto_1
    if-eq v2, v3, :cond_0

    .line 266
    add-int/lit8 v0, v0, 0x1

    .line 268
    :cond_0
    return v0

    :cond_1
    move v2, v4

    .line 264
    goto :goto_0

    :cond_2
    move v3, v4

    .line 265
    goto :goto_1
.end method

.method public static diffYear(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 2
    .param p0, "date1"    # Ljava/util/Calendar;
    .param p1, "date2"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x1

    .line 277
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/16 v2, 0x3b

    .line 120
    if-nez p0, :cond_0

    .line 121
    const/4 p0, 0x0

    .line 128
    :goto_0
    return-object p0

    .line 123
    :cond_0
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    .line 124
    const/16 v0, 0xb

    const/16 v1, 0x17

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 125
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 126
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 127
    const/16 v0, 0xe

    const/16 v1, 0x3e7

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public static endOfToday()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static endOfTodayMills()J
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfToday()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static endOfTomorrow()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 111
    .local v0, "date":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 112
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    return-object v1
.end method

.method public static endOfTomorrowMills()J
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTomorrow()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 12
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    return-object v1

    .line 15
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static format(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "allDay"    # Z

    .prologue
    .line 436
    if-eqz p1, :cond_0

    .line 437
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->formatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 439
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getFormatDateHourMinute()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 419
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDateFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public static formatDateHourMinute(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 428
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getFormatDateHourMinute()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 432
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getFormatDateTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatHourMinute(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 443
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getFormatHourMinute()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatLong(J)Ljava/lang/String;
    .locals 2
    .param p0, "mills"    # J

    .prologue
    .line 374
    invoke-static {p0, p1}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDateFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMinuteToHM(I)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # I

    .prologue
    const/16 v4, 0xa

    .line 453
    if-gtz p0, :cond_0

    .line 454
    const/4 v3, 0x0

    .line 472
    :goto_0
    return-object v3

    .line 456
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .local v0, "format":Ljava/lang/StringBuilder;
    const/16 v3, 0x3c

    if-lt p0, v3, :cond_3

    .line 458
    div-int/lit8 v1, p0, 0x3c

    .line 459
    .local v1, "hour":I
    if-ge v1, v4, :cond_1

    .line 460
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    .end local v1    # "hour":I
    :goto_1
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    rem-int/lit8 v2, p0, 0x3c

    .line 468
    .local v2, "minute":I
    if-ge v2, v4, :cond_2

    .line 469
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 464
    .end local v2    # "minute":I
    :cond_3
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static formatMonthDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 424
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getMonthDayFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMonthDateHourMinute(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 489
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getMonthDayFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 491
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getFormatHourMinute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {p0, v0}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMonthDayWeekday(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EEE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getMonthDayFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatRepeatNo(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    .line 24
    const-string v0, "yyyyMMdd"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, v0, v1}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatWeekdayDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EEE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDateFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatWeekdayMonthDay(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getMonthDayFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " EEE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoxEndAt(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 9
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x7

    const/4 v4, 0x5

    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, "endDate":Ljava/util/Calendar;
    const-string v3, "today"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 536
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfToday()Ljava/util/Calendar;

    move-result-object v1

    .line 568
    :cond_0
    :goto_0
    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 569
    return-object v1

    .line 537
    :cond_1
    const-string v3, "tomorrow"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 538
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTomorrow()Ljava/util/Calendar;

    move-result-object v1

    .line 539
    goto :goto_0

    :cond_2
    const-string v3, "this_week"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 540
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->getDoitEndOfThisWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 541
    goto :goto_0

    :cond_3
    const-string v3, "next_week"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 542
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->getDoitEndOfThisWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 543
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 544
    :cond_4
    const-string v3, "this_workday"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 545
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 546
    invoke-virtual {v1, v5, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 547
    :cond_5
    const-string v3, "next_workday"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 548
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 549
    invoke-virtual {v1, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 550
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 551
    :cond_6
    const-string v3, "this_month"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 552
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 554
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 553
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 555
    :cond_7
    const-string v3, "next_month"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 556
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 557
    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 559
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 558
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 560
    :cond_8
    invoke-static {p0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "days":[Ljava/lang/String;
    array-length v3, v0

    if-ne v3, v7, :cond_0

    .line 563
    aget-object v3, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 564
    .local v2, "endDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 565
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0
.end method

.method public static getBoxStartAt(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x5

    .line 495
    const/4 v1, 0x0

    .line 496
    .local v1, "startDate":Ljava/util/Calendar;
    const-string v3, "today"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v1

    .line 529
    :cond_0
    :goto_0
    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 530
    return-object v1

    .line 498
    :cond_1
    const-string v3, "tomorrow"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v1

    .line 500
    goto :goto_0

    :cond_2
    const-string v3, "this_week"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 502
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->getDoitStartOfThisWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 503
    goto :goto_0

    :cond_3
    const-string v3, "next_week"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 505
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->getDoitStartOfThisWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 506
    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 507
    :cond_4
    const-string v3, "this_workday"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 508
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 509
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 510
    :cond_5
    const-string v3, "next_workday"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 511
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 512
    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 513
    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 514
    :cond_6
    const-string v3, "this_month"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 515
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 516
    invoke-virtual {v1, v4, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 517
    :cond_7
    const-string v3, "next_month"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 518
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 519
    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->add(II)V

    .line 520
    invoke-virtual {v1, v4, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 521
    :cond_8
    invoke-static {p0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "days":[Ljava/lang/String;
    array-length v3, v0

    if-ne v3, v5, :cond_0

    .line 524
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 525
    .local v2, "startDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 526
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0
.end method

.method public static getDSTDate(J)Ljava/util/Calendar;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 611
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 612
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 613
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 614
    .local v1, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr p0, v2

    .line 617
    :cond_0
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 618
    return-object v0
.end method

.method public static getDoitEndOfThisWeek(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 6
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    .line 654
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 655
    .local v2, "temp":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 656
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDayOfWeekStart()I

    move-result v0

    .line 657
    .local v0, "doitWeekStart":I
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v1, v3, v0

    .line 658
    .local v1, "start":I
    if-gez v1, :cond_0

    .line 659
    add-int/lit8 v1, v1, 0x7

    .line 661
    :cond_0
    const/4 v3, 0x5

    neg-int v4, v1

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 662
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 663
    return-object v2
.end method

.method public static getDoitStartOfThisWeek(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 6
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    .line 641
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 642
    .local v2, "temp":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 643
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDayOfWeekStart()I

    move-result v0

    .line 644
    .local v0, "doitWeekStart":I
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v1, v3, v0

    .line 645
    .local v1, "start":I
    if-gez v1, :cond_0

    .line 646
    add-int/lit8 v1, v1, 0x7

    .line 648
    :cond_0
    const/4 v3, 0x5

    neg-int v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 649
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 650
    return-object v2
.end method

.method public static getGMTOffset()Ljava/lang/String;
    .locals 7

    .prologue
    .line 577
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 578
    .local v0, "offset":I
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "GMT%s%02d:%02d"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 579
    if-ltz v0, :cond_0

    const-string v2, "+"

    :goto_0
    aput-object v2, v5, v6

    const/4 v2, 0x1

    const v6, 0x36ee80

    div-int v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    .line 580
    const v6, 0xea60

    div-int v6, v0, v6

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 578
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "text":Ljava/lang/String;
    return-object v1

    .line 579
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    const-string v2, "-"

    goto :goto_0
.end method

.method public static getLocalOffset()D
    .locals 4

    .prologue
    .line 573
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getWeekStart(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 6
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    .line 353
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 354
    .local v2, "startDate":Ljava/util/Calendar;
    if-eqz p0, :cond_0

    .line 355
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 357
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDayOfWeekStart()I

    move-result v0

    .line 358
    .local v0, "doitWeekStart":I
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v1, v3, v0

    .line 359
    .local v1, "start":I
    if-gez v1, :cond_1

    .line 360
    add-int/lit8 v1, v1, 0x7

    .line 362
    :cond_1
    const/4 v3, 0x5

    neg-int v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 363
    return-object v2
.end method

.method public static isAm(Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    const/16 v2, 0xb

    const/4 v1, 0x0

    .line 78
    if-nez p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 82
    .local v0, "hourOfDay":I
    if-ltz v0, :cond_0

    if-gt v0, v2, :cond_0

    .line 83
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isBetweenDoitThisWeek(Ljava/util/Calendar;)Z
    .locals 8
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x0

    .line 626
    if-nez p0, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v4

    .line 629
    :cond_1
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->getDoitStartOfThisWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    .line 630
    .local v3, "thisWeekStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 631
    .local v2, "thisWeekEnd":Ljava/util/Calendar;
    const/4 v5, 0x5

    const/4 v6, 0x6

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 632
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 633
    .local v0, "dateMillis":J
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v5, v0, v6

    if-lez v5, :cond_0

    .line 634
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v5, v0, v6

    if-gez v5, :cond_0

    .line 635
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isNextMonthMore(Ljava/util/Calendar;)Ljava/lang/Boolean;
    .locals 6
    .param p0, "value"    # Ljava/util/Calendar;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 404
    if-nez p0, :cond_0

    .line 405
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 414
    :goto_0
    return-object v2

    .line 407
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 408
    .local v0, "date":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 409
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 410
    .local v1, "nextMonthStart":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 412
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 411
    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 413
    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 414
    invoke-static {v0, v1, v4}, Lim/doit/pro/utils/DateUtils;->afterOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static isNextWeek(Ljava/util/Calendar;)Ljava/lang/Boolean;
    .locals 9
    .param p0, "value"    # Ljava/util/Calendar;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 378
    if-nez p0, :cond_0

    .line 379
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 388
    :goto_0
    return-object v3

    .line 381
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 382
    .local v0, "date":Ljava/util/Calendar;
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->getWeekStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 383
    .local v2, "nextWeekStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 384
    .local v1, "nextWeekEnd":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 385
    const/4 v3, 0x7

    invoke-virtual {v2, v8, v3}, Ljava/util/Calendar;->add(II)V

    .line 386
    const/16 v3, 0xd

    invoke-virtual {v1, v8, v3}, Ljava/util/Calendar;->add(II)V

    .line 387
    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 388
    invoke-static {v0, v2, v6}, Lim/doit/pro/utils/DateUtils;->afterOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 389
    invoke-static {v0, v1, v6}, Lim/doit/pro/utils/DateUtils;->beforeOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method public static isPm(Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    .line 89
    if-nez p0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 93
    .local v0, "hourOfDay":I
    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    const/16 v2, 0x17

    if-gt v0, v2, :cond_0

    .line 94
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isThisMonth(Ljava/util/Calendar;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 393
    if-nez p0, :cond_0

    .line 394
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 399
    :goto_0
    return-object v3

    .line 396
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 397
    .local v1, "now":Ljava/util/Calendar;
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 398
    .local v2, "year":I
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 399
    .local v0, "month":I
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 400
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 399
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method public static isThisWeek(Ljava/util/Calendar;)Ljava/lang/Boolean;
    .locals 8
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 341
    if-nez p0, :cond_0

    .line 342
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 348
    :goto_0
    return-object v3

    .line 344
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 345
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 346
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->getWeekStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 347
    .local v2, "weekStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/utils/DateUtils;->thisWeekEnd(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 348
    .local v1, "weekEnd":Ljava/util/Calendar;
    invoke-static {v0, v2, v6}, Lim/doit/pro/utils/DateUtils;->afterOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    invoke-static {v0, v1, v6}, Lim/doit/pro/utils/DateUtils;->beforeOrEq(Ljava/util/Calendar;Ljava/util/Calendar;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method public static isToday(Ljava/util/Calendar;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    .line 148
    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, v0}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isTomorrow(Ljava/util/Calendar;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x1

    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 153
    .local v0, "tomorrow":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 154
    if-eqz p0, :cond_0

    invoke-static {p0, v0}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static isWeekend(Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 676
    if-nez p0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return v1

    .line 679
    :cond_1
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 680
    .local v0, "dayOfWeek":I
    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_0

    :cond_2
    move v1, v2

    .line 681
    goto :goto_0
.end method

.method public static isYesterday(Ljava/util/Calendar;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x0

    .line 158
    if-nez p0, :cond_0

    .line 159
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    .line 161
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 162
    .local v0, "yesterday":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 163
    invoke-static {p0, v0}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 37
    invoke-static {p0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 41
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 42
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 44
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 47
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseHourMinuteToCurrentTime(Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 5
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xb

    .line 29
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 30
    .local v0, "result":Ljava/util/Calendar;
    const-string v2, "HH:mm"

    invoke-static {p1, v2}, Lim/doit/pro/utils/DateUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 31
    .local v1, "tempTime":Ljava/util/Calendar;
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 32
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 33
    return-object v0
.end method

.method public static startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 132
    if-nez p0, :cond_0

    .line 133
    const/4 p0, 0x0

    .line 136
    :goto_0
    return-object p0

    .line 135
    :cond_0
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->clearHourAndMinuteAndSecondAndMillisecond(Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method public static startOfToday()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static startOfTodayMillis()J
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static startOfTomorrow()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 101
    .local v0, "date":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 102
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    return-object v1
.end method

.method public static startOfTomorrowMills()J
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrow()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static theActualDayOfMonth(Ljava/util/Calendar;I)Ljava/lang/Integer;
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;
    .param p1, "date"    # I

    .prologue
    .line 57
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 58
    .local v0, "maxDate":Ljava/lang/Integer;
    if-gez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    .end local p1    # "date":I
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static thisWeekEnd(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    .line 367
    invoke-static {p0}, Lim/doit/pro/utils/DateUtils;->getWeekStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 368
    .local v0, "endDate":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 369
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 370
    return-object v0
.end method
