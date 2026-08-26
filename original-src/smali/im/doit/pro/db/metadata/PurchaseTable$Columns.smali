.class public Lim/doit/pro/db/metadata/PurchaseTable$Columns;
.super Lim/doit/pro/db/metadata/DCommonColumns;
.source "PurchaseTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/PurchaseTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final OUT_TRADE_NO:Ljava/lang/String; = "out_trade_no"

.field public static final PURCHASE_DATA:Ljava/lang/String; = "purchase_data"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lim/doit/pro/db/metadata/DCommonColumns;-><init>()V

    return-void
.end method
