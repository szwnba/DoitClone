.class public Lim/doit/pro/utils/SortUtils;
.super Ljava/lang/Object;
.source "SortUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareDate(JJZ)I
    .locals 4
    .param p0, "o1"    # J
    .param p2, "o2"    # J
    .param p4, "isDesc"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 22
    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    if-nez p4, :cond_0

    .line 23
    const-wide p0, 0x7fffffffffffffffL

    .line 25
    :cond_0
    cmp-long v1, p2, v2

    if-nez v1, :cond_1

    if-nez p4, :cond_1

    .line 26
    const-wide p2, 0x7fffffffffffffffL

    .line 28
    :cond_1
    cmp-long v1, p0, p2

    if-gez v1, :cond_3

    const/4 v0, -0x1

    .line 29
    .local v0, "diff":I
    :goto_0
    if-eqz p4, :cond_2

    .line 30
    neg-int v0, v0

    .line 31
    :cond_2
    return v0

    .line 28
    .end local v0    # "diff":I
    :cond_3
    cmp-long v1, p0, p2

    if-nez v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I
    .locals 8
    .param p0, "date1"    # Ljava/util/Calendar;
    .param p1, "date2"    # Ljava/util/Calendar;
    .param p2, "isDesc"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 35
    const-wide/16 v2, 0x0

    .local v2, "o1":J
    const-wide/16 v4, 0x0

    .line 36
    .local v4, "o2":J
    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 39
    :cond_0
    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 42
    :cond_1
    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    .line 43
    const-wide v2, 0x7fffffffffffffffL

    .line 45
    :cond_2
    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    if-nez p2, :cond_3

    .line 46
    const-wide v4, 0x7fffffffffffffffL

    .line 48
    :cond_3
    cmp-long v1, v2, v4

    if-gez v1, :cond_5

    const/4 v0, -0x1

    .line 49
    .local v0, "diff":I
    :goto_0
    if-eqz p2, :cond_4

    .line 50
    neg-int v0, v0

    .line 51
    :cond_4
    return v0

    .line 48
    .end local v0    # "diff":I
    :cond_5
    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static comparePosAsc(JJ)I
    .locals 2
    .param p0, "o1"    # J
    .param p2, "o2"    # J

    .prologue
    .line 56
    cmp-long v1, p0, p2

    if-gez v1, :cond_0

    const/4 v0, -0x1

    .line 57
    .local v0, "diff":I
    :goto_0
    return v0

    .line 56
    .end local v0    # "diff":I
    :cond_0
    cmp-long v1, p0, p2

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static sortContacts(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Contact;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    new-instance v0, Lim/doit/pro/utils/SortUtils$3;

    invoke-direct {v0}, Lim/doit/pro/utils/SortUtils$3;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 110
    return-object p0
.end method

.method public static sortInt(Ljava/util/List;Z)V
    .locals 1
    .param p1, "isDesc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lim/doit/pro/utils/SortUtils$1;

    invoke-direct {v0, p1}, Lim/doit/pro/utils/SortUtils$1;-><init>(Z)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    return-void
.end method

.method public static sortReminders(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/db/metadata/ReminderMessage;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/db/metadata/ReminderMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/db/metadata/ReminderMessage;>;"
    new-instance v0, Lim/doit/pro/utils/SortUtils$2;

    invoke-direct {v0}, Lim/doit/pro/utils/SortUtils$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    return-object p0
.end method
