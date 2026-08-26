.class public Lim/doit/pro/activity/listview/sort/ComparatorContactByPos;
.super Ljava/lang/Object;
.source "ComparatorContactByPos.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lim/doit/pro/model/Contact;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lim/doit/pro/model/Contact;Lim/doit/pro/model/Contact;)I
    .locals 8
    .param p1, "one"    # Lim/doit/pro/model/Contact;
    .param p2, "another"    # Lim/doit/pro/model/Contact;

    .prologue
    const-wide/16 v6, 0x0

    .line 18
    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getPos()J

    move-result-wide v2

    invoke-virtual {p2}, Lim/doit/pro/model/Contact;->getPos()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 19
    .local v0, "diff":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 20
    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getCreated()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p2}, Lim/doit/pro/model/Contact;->getCreated()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lim/doit/pro/utils/SortUtils;->compareDate(Ljava/util/Calendar;Ljava/util/Calendar;Z)I

    move-result v2

    int-to-long v0, v2

    .line 22
    :cond_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/model/Contact;

    check-cast p2, Lim/doit/pro/model/Contact;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/activity/listview/sort/ComparatorContactByPos;->compare(Lim/doit/pro/model/Contact;Lim/doit/pro/model/Contact;)I

    move-result v0

    return v0
.end method
