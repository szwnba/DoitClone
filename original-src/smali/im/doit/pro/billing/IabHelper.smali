.class public Lim/doit/pro/billing/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;,
        Lim/doit/pro/billing/IabHelper$OnConsumeMultiFinishedListener;,
        Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;,
        Lim/doit/pro/billing/IabHelper$OnIabSetupFinishedListener;,
        Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposed:Z

.field mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v1, p0, Lim/doit/pro/billing/IabHelper;->mDebugLog:Z

    .line 76
    const-string v0, "IabHelper"

    iput-object v0, p0, Lim/doit/pro/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lim/doit/pro/billing/IabHelper;->mSetupDone:Z

    .line 82
    iput-boolean v1, p0, Lim/doit/pro/billing/IabHelper;->mDisposed:Z

    .line 85
    iput-boolean v1, p0, Lim/doit/pro/billing/IabHelper;->mSubscriptionsSupported:Z

    .line 89
    iput-boolean v1, p0, Lim/doit/pro/billing/IabHelper;->mAsyncInProgress:Z

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lim/doit/pro/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/billing/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/billing/IabHelper;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lim/doit/pro/billing/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 167
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private checkNotDisposed()V
    .locals 2

    .prologue
    .line 308
    iget-boolean v0, p0, Lim/doit/pro/billing/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 757
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 760
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 770
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 773
    rsub-int v2, p0, -0x3e8

    .line 774
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 780
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 775
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 777
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 778
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 780
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 786
    iget-boolean v0, p0, Lim/doit/pro/billing/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 788
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_0
    return-void
.end method

.method consume(Lim/doit/pro/billing/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lim/doit/pro/billing/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/billing/IabException;
        }
    .end annotation

    .prologue
    .line 663
    invoke-direct {p0}, Lim/doit/pro/billing/IabHelper;->checkNotDisposed()V

    .line 664
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lim/doit/pro/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 666
    iget-object v4, p1, Lim/doit/pro/billing/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 667
    new-instance v4, Lim/doit/pro/billing/IabException;

    const/16 v5, -0x3f2

    .line 668
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Items of type \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lim/doit/pro/billing/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 667
    invoke-direct {v4, v5, v6}, Lim/doit/pro/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 672
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lim/doit/pro/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 673
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lim/doit/pro/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 675
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t consume "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 676
    new-instance v4, Lim/doit/pro/billing/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 676
    invoke-direct {v4, v5, v6}, Lim/doit/pro/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lim/doit/pro/billing/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lim/doit/pro/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 680
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Consuming sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 681
    iget-object v4, p0, Lim/doit/pro/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lim/doit/pro/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 682
    .local v1, "response":I
    if-nez v1, :cond_3

    .line 683
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Successfully consumed sku: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 693
    return-void

    .line 686
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error consuming consuming sku "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lim/doit/pro/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 687
    new-instance v4, Lim/doit/pro/billing/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error consuming sku "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lim/doit/pro/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lim/doit/pro/billing/Purchase;Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lim/doit/pro/billing/Purchase;
    .param p2, "listener"    # Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 731
    invoke-direct {p0}, Lim/doit/pro/billing/IabHelper;->checkNotDisposed()V

    .line 732
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lim/doit/pro/billing/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lim/doit/pro/billing/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;Lim/doit/pro/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 736
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lim/doit/pro/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lim/doit/pro/billing/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/billing/Purchase;",
            ">;",
            "Lim/doit/pro/billing/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 744
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lim/doit/pro/billing/Purchase;>;"
    invoke-direct {p0}, Lim/doit/pro/billing/IabHelper;->checkNotDisposed()V

    .line 745
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lim/doit/pro/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 746
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lim/doit/pro/billing/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;Lim/doit/pro/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 747
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;Lim/doit/pro/billing/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lim/doit/pro/billing/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lim/doit/pro/billing/Purchase;",
            ">;",
            "Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;",
            "Lim/doit/pro/billing/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 953
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lim/doit/pro/billing/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 954
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lim/doit/pro/billing/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 955
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lim/doit/pro/billing/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lim/doit/pro/billing/IabHelper$3;-><init>(Lim/doit/pro/billing/IabHelper;Ljava/util/List;Lim/doit/pro/billing/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lim/doit/pro/billing/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 984
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 985
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/billing/IabHelper;->mSetupDone:Z

    .line 296
    iget-object v0, p0, Lim/doit/pro/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lim/doit/pro/billing/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/billing/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lim/doit/pro/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 300
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/billing/IabHelper;->mDisposed:Z

    .line 301
    iput-object v2, p0, Lim/doit/pro/billing/IabHelper;->mContext:Landroid/content/Context;

    .line 302
    iput-object v2, p0, Lim/doit/pro/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 303
    iput-object v2, p0, Lim/doit/pro/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 304
    iput-object v2, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 305
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 180
    invoke-direct {p0}, Lim/doit/pro/billing/IabHelper;->checkNotDisposed()V

    .line 181
    iput-boolean p1, p0, Lim/doit/pro/billing/IabHelper;->mDebugLog:Z

    .line 182
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0}, Lim/doit/pro/billing/IabHelper;->checkNotDisposed()V

    .line 175
    iput-boolean p1, p0, Lim/doit/pro/billing/IabHelper;->mDebugLog:Z

    .line 176
    iput-object p2, p0, Lim/doit/pro/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 177
    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .prologue
    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/doit/pro/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 834
    const-string v0, ""

    iput-object v0, p0, Lim/doit/pro/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/billing/IabHelper;->mAsyncInProgress:Z

    .line 836
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 825
    iget-boolean v0, p0, Lim/doit/pro/billing/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_0
    iput-object p1, p0, Lim/doit/pro/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/billing/IabHelper;->mAsyncInProgress:Z

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 794
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 795
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 796
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 797
    const/4 v1, 0x0

    .line 800
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 799
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 800
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 802
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 804
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 810
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 811
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 812
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 813
    const/4 v1, 0x0

    .line 816
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 815
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 816
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 818
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 820
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 445
    iget v8, p0, Lim/doit/pro/billing/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    const/4 v8, 0x0

    .line 524
    :goto_0
    return v8

    .line 447
    :cond_0
    invoke-direct {p0}, Lim/doit/pro/billing/IabHelper;->checkNotDisposed()V

    .line 448
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lim/doit/pro/billing/IabHelper;->flagEndAsync()V

    .line 453
    if-nez p3, :cond_2

    .line 454
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 455
    new-instance v6, Lim/doit/pro/billing/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 456
    .local v6, "result":Lim/doit/pro/billing/IabResult;
    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Purchase;)V

    .line 457
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 460
    .end local v6    # "result":Lim/doit/pro/billing/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lim/doit/pro/billing/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 461
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_a

    if-nez v5, :cond_a

    .line 465
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 466
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase data: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 467
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Data signature: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 468
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Extras: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 469
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Expected item type: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lim/doit/pro/billing/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 471
    if-eqz v4, :cond_3

    if-nez v0, :cond_5

    .line 472
    :cond_3
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 473
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Extras: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 474
    new-instance v6, Lim/doit/pro/billing/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 475
    .restart local v6    # "result":Lim/doit/pro/billing/IabResult;
    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Purchase;)V

    .line 476
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 479
    .end local v6    # "result":Lim/doit/pro/billing/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 481
    .local v2, "purchase":Lim/doit/pro/billing/Purchase;
    :try_start_0
    new-instance v3, Lim/doit/pro/billing/Purchase;

    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4, v0}, Lim/doit/pro/billing/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v2    # "purchase":Lim/doit/pro/billing/Purchase;
    .local v3, "purchase":Lim/doit/pro/billing/Purchase;
    :try_start_1
    invoke-virtual {v3}, Lim/doit/pro/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 485
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lim/doit/pro/billing/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 486
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 487
    new-instance v6, Lim/doit/pro/billing/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Signature verification failed for sku "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 488
    .restart local v6    # "result":Lim/doit/pro/billing/IabResult;
    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Purchase;)V

    .line 489
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 491
    .end local v6    # "result":Lim/doit/pro/billing/IabResult;
    :cond_7
    const-string v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 501
    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 502
    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lim/doit/pro/billing/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Purchase;)V

    .line 524
    .end local v3    # "purchase":Lim/doit/pro/billing/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_8
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 493
    .restart local v2    # "purchase":Lim/doit/pro/billing/Purchase;
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 496
    new-instance v6, Lim/doit/pro/billing/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 497
    .restart local v6    # "result":Lim/doit/pro/billing/IabResult;
    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Purchase;)V

    .line 498
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 505
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lim/doit/pro/billing/Purchase;
    .end local v6    # "result":Lim/doit/pro/billing/IabResult;
    :cond_a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_b

    .line 507
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lim/doit/pro/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 508
    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 509
    new-instance v6, Lim/doit/pro/billing/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 510
    .restart local v6    # "result":Lim/doit/pro/billing/IabResult;
    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Purchase;)V

    goto :goto_1

    .line 513
    .end local v6    # "result":Lim/doit/pro/billing/IabResult;
    :cond_b
    if-nez p2, :cond_c

    .line 514
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase canceled - Response: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lim/doit/pro/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 515
    new-instance v6, Lim/doit/pro/billing/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 516
    .restart local v6    # "result":Lim/doit/pro/billing/IabResult;
    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Purchase;)V

    goto :goto_1

    .line 519
    .end local v6    # "result":Lim/doit/pro/billing/IabResult;
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase failed. Result code: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 520
    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lim/doit/pro/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 519
    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 521
    new-instance v6, Lim/doit/pro/billing/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 522
    .restart local v6    # "result":Lim/doit/pro/billing/IabResult;
    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Purchase;)V

    goto/16 :goto_1

    .line 493
    .end local v6    # "result":Lim/doit/pro/billing/IabResult;
    .restart local v3    # "purchase":Lim/doit/pro/billing/Purchase;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lim/doit/pro/billing/Purchase;
    .restart local v2    # "purchase":Lim/doit/pro/billing/Purchase;
    goto/16 :goto_2
.end method

.method public isSetupDone()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lim/doit/pro/billing/IabHelper;->mSetupDone:Z

    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 339
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lim/doit/pro/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lim/doit/pro/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "listener"    # Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;
    .param p6, "extraData"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-direct {p0}, Lim/doit/pro/billing/IabHelper;->checkNotDisposed()V

    .line 378
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 379
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 382
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lim/doit/pro/billing/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_1

    .line 383
    new-instance v11, Lim/doit/pro/billing/IabResult;

    const/16 v1, -0x3f1

    .line 384
    const-string v2, "Subscriptions are not available."

    .line 383
    invoke-direct {v11, v1, v2}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 385
    .local v11, "r":Lim/doit/pro/billing/IabResult;
    invoke-virtual {p0}, Lim/doit/pro/billing/IabHelper;->flagEndAsync()V

    .line 386
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v1}, Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Purchase;)V

    .line 428
    .end local v11    # "r":Lim/doit/pro/billing/IabResult;
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Constructing buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lim/doit/pro/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lim/doit/pro/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 393
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 394
    .local v12, "response":I
    if-eqz v12, :cond_2

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lim/doit/pro/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lim/doit/pro/billing/IabHelper;->flagEndAsync()V

    .line 397
    new-instance v13, Lim/doit/pro/billing/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 398
    .local v13, "result":Lim/doit/pro/billing/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Purchase;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 412
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lim/doit/pro/billing/IabResult;
    :catch_0
    move-exception v9

    .line 413
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 415
    invoke-virtual {p0}, Lim/doit/pro/billing/IabHelper;->flagEndAsync()V

    .line 417
    new-instance v13, Lim/doit/pro/billing/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 418
    .restart local v13    # "result":Lim/doit/pro/billing/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Purchase;)V

    goto/16 :goto_0

    .line 402
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lim/doit/pro/billing/IabResult;
    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .restart local v12    # "response":I
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 403
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 404
    move/from16 v0, p4

    iput v0, p0, Lim/doit/pro/billing/IabHelper;->mRequestCode:I

    .line 405
    move-object/from16 v0, p5

    iput-object v0, p0, Lim/doit/pro/billing/IabHelper;->mPurchaseListener:Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 406
    move-object/from16 v0, p3

    iput-object v0, p0, Lim/doit/pro/billing/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 407
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 408
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 409
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 410
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p4

    .line 407
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 420
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "response":I
    :catch_1
    move-exception v9

    .line 421
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 423
    invoke-virtual {p0}, Lim/doit/pro/billing/IabHelper;->flagEndAsync()V

    .line 425
    new-instance v13, Lim/doit/pro/billing/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 426
    .restart local v13    # "result":Lim/doit/pro/billing/IabResult;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lim/doit/pro/billing/IabResult;Lim/doit/pro/billing/Purchase;)V

    goto/16 :goto_0
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 349
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lim/doit/pro/billing/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lim/doit/pro/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILim/doit/pro/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 988
    iget-boolean v0, p0, Lim/doit/pro/billing/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 992
    iget-object v0, p0, Lim/doit/pro/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 996
    iget-object v0, p0, Lim/doit/pro/billing/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lim/doit/pro/billing/Inventory;
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lim/doit/pro/billing/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/billing/IabException;
        }
    .end annotation

    .prologue
    .line 528
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lim/doit/pro/billing/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lim/doit/pro/billing/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lim/doit/pro/billing/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lim/doit/pro/billing/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/billing/IabException;
        }
    .end annotation

    .prologue
    .line 546
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lim/doit/pro/billing/IabHelper;->checkNotDisposed()V

    .line 547
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lim/doit/pro/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 549
    :try_start_0
    new-instance v1, Lim/doit/pro/billing/Inventory;

    invoke-direct {v1}, Lim/doit/pro/billing/Inventory;-><init>()V

    .line 550
    .local v1, "inv":Lim/doit/pro/billing/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lim/doit/pro/billing/IabHelper;->queryPurchases(Lim/doit/pro/billing/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 551
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 552
    new-instance v3, Lim/doit/pro/billing/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lim/doit/pro/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 579
    .end local v1    # "inv":Lim/doit/pro/billing/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lim/doit/pro/billing/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lim/doit/pro/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 555
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lim/doit/pro/billing/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 556
    :try_start_1
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lim/doit/pro/billing/IabHelper;->querySkuDetails(Ljava/lang/String;Lim/doit/pro/billing/Inventory;Ljava/util/List;)I

    move-result v2

    .line 557
    if-eqz v2, :cond_1

    .line 558
    new-instance v3, Lim/doit/pro/billing/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lim/doit/pro/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 582
    .end local v1    # "inv":Lim/doit/pro/billing/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 583
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lim/doit/pro/billing/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lim/doit/pro/billing/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 563
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lim/doit/pro/billing/Inventory;
    .restart local v2    # "r":I
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lim/doit/pro/billing/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_3

    .line 564
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lim/doit/pro/billing/IabHelper;->queryPurchases(Lim/doit/pro/billing/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 565
    if-eqz v2, :cond_2

    .line 566
    new-instance v3, Lim/doit/pro/billing/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lim/doit/pro/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 569
    :cond_2
    if-eqz p1, :cond_3

    .line 570
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p2}, Lim/doit/pro/billing/IabHelper;->querySkuDetails(Ljava/lang/String;Lim/doit/pro/billing/Inventory;Ljava/util/List;)I

    move-result v2

    .line 571
    if-eqz v2, :cond_3

    .line 572
    new-instance v3, Lim/doit/pro/billing/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lim/doit/pro/billing/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 577
    :cond_3
    return-object v1
.end method

.method public queryInventoryAsync(Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 645
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lim/doit/pro/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;)V

    .line 646
    return-void
.end method

.method public queryInventoryAsync(ZLim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lim/doit/pro/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;)V

    .line 650
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 614
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 615
    .local v5, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lim/doit/pro/billing/IabHelper;->checkNotDisposed()V

    .line 616
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lim/doit/pro/billing/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 617
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lim/doit/pro/billing/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 618
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lim/doit/pro/billing/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lim/doit/pro/billing/IabHelper$2;-><init>(Lim/doit/pro/billing/IabHelper;ZLjava/util/List;Lim/doit/pro/billing/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 641
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 642
    return-void
.end method

.method queryPurchases(Lim/doit/pro/billing/Inventory;Ljava/lang/String;)I
    .locals 16
    .param p1, "inv"    # Lim/doit/pro/billing/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 840
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lim/doit/pro/billing/IabHelper;->mDisposed:Z

    if-eqz v13, :cond_0

    const/16 v8, -0x3f0

    .line 900
    :goto_0
    return v8

    .line 842
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Querying owned items, item type: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 843
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Package name: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lim/doit/pro/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 844
    const/4 v12, 0x0

    .line 845
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 848
    .local v1, "continueToken":Ljava/lang/String;
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lim/doit/pro/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 852
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lim/doit/pro/billing/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 853
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Owned items response: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 854
    if-eqz v8, :cond_2

    .line 855
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getPurchases() failed: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lim/doit/pro/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 858
    :cond_2
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 859
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 860
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 861
    :cond_3
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 862
    const/16 v8, -0x3ea

    goto/16 :goto_0

    .line 866
    :cond_4
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    .line 865
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 868
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 867
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 870
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 869
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 872
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v2, v13, :cond_5

    .line 896
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 897
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 898
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 900
    if-eqz v12, :cond_8

    const/16 v13, -0x3eb

    :goto_2
    move v8, v13

    goto/16 :goto_0

    .line 873
    :cond_5
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 874
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 875
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 876
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lim/doit/pro/billing/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lim/doit/pro/billing/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 877
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Sku is owned: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 878
    new-instance v5, Lim/doit/pro/billing/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lim/doit/pro/billing/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    .local v5, "purchase":Lim/doit/pro/billing/Purchase;
    invoke-virtual {v5}, Lim/doit/pro/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 881
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lim/doit/pro/billing/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 882
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 886
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lim/doit/pro/billing/Inventory;->addPurchase(Lim/doit/pro/billing/Purchase;)V

    .line 872
    .end local v5    # "purchase":Lim/doit/pro/billing/Purchase;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 889
    :cond_7
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lim/doit/pro/billing/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 890
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "   Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 891
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "   Signature: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 892
    const/4 v12, 0x1

    goto :goto_3

    .line 900
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method querySkuDetails(Ljava/lang/String;Lim/doit/pro/billing/Inventory;Ljava/util/List;)I
    .locals 11
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lim/doit/pro/billing/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lim/doit/pro/billing/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 905
    const-string v8, "Querying SKU details."

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 906
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v6, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lim/doit/pro/billing/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 908
    if-eqz p3, :cond_1

    .line 909
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 916
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 917
    const-string v8, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 946
    :cond_2
    :goto_1
    return v2

    .line 909
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 910
    .local v4, "sku":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 911
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 921
    .end local v4    # "sku":Ljava/lang/String;
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 922
    .local v1, "querySkus":Landroid/os/Bundle;
    const-string v8, "ITEM_ID_LIST"

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 923
    iget-object v8, p0, Lim/doit/pro/billing/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x3

    iget-object v10, p0, Lim/doit/pro/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10, p1, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 926
    .local v5, "skuDetails":Landroid/os/Bundle;
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 927
    invoke-virtual {p0, v5}, Lim/doit/pro/billing/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 928
    .local v2, "response":I
    if-eqz v2, :cond_5

    .line 929
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getSkuDetails() failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lim/doit/pro/billing/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 933
    :cond_5
    const-string v8, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v8}, Lim/doit/pro/billing/IabHelper;->logError(Ljava/lang/String;)V

    .line 934
    const/16 v2, -0x3ea

    goto :goto_1

    .line 939
    .end local v2    # "response":I
    :cond_6
    const-string v8, "DETAILS_LIST"

    .line 938
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 941
    .local v3, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 942
    .local v7, "thisResponse":Ljava/lang/String;
    new-instance v0, Lim/doit/pro/billing/SkuDetails;

    invoke-direct {v0, p1, v7}, Lim/doit/pro/billing/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    .local v0, "d":Lim/doit/pro/billing/SkuDetails;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Got sku details: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2, v0}, Lim/doit/pro/billing/Inventory;->addSkuDetails(Lim/doit/pro/billing/SkuDetails;)V

    goto :goto_2
.end method

.method public startSetup(Lim/doit/pro/billing/IabHelper$OnIabSetupFinishedListener;)V
    .locals 5
    .param p1, "listener"    # Lim/doit/pro/billing/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 206
    invoke-direct {p0}, Lim/doit/pro/billing/IabHelper;->checkNotDisposed()V

    .line 207
    iget-boolean v2, p0, Lim/doit/pro/billing/IabHelper;->mSetupDone:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "IAB helper is already set up."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_0
    const-string v2, "Starting in-app billing setup."

    invoke-virtual {p0, v2}, Lim/doit/pro/billing/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 211
    new-instance v2, Lim/doit/pro/billing/IabHelper$1;

    invoke-direct {v2, p0, p1}, Lim/doit/pro/billing/IabHelper$1;-><init>(Lim/doit/pro/billing/IabHelper;Lim/doit/pro/billing/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v2, p0, Lim/doit/pro/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 266
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v2, p0, Lim/doit/pro/billing/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 269
    .local v0, "queryIntentServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 271
    iget-object v2, p0, Lim/doit/pro/billing/IabHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lim/doit/pro/billing/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 275
    :cond_2
    if-eqz p1, :cond_1

    .line 277
    new-instance v2, Lim/doit/pro/billing/IabResult;

    const/4 v3, 0x3

    .line 278
    const-string v4, "Billing service unavailable on device."

    .line 277
    invoke-direct {v2, v3, v4}, Lim/doit/pro/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 276
    invoke-interface {p1, v2}, Lim/doit/pro/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lim/doit/pro/billing/IabResult;)V

    goto :goto_0
.end method

.method public subscriptionsSupported()Z
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Lim/doit/pro/billing/IabHelper;->checkNotDisposed()V

    .line 314
    iget-boolean v0, p0, Lim/doit/pro/billing/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method
